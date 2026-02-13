import 'package:flowcase/ui/features/profile/view_models/profile_view_model.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final ProfileViewModel viewModel;

  const ProfileScreen({super.key, required this.viewModel});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');

  @override
  void initState() {
    super.initState();
    widget.viewModel.loadUser();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
  }

  Future<void> _handleLogout() async {
    await widget.viewModel.logout();

    if (!mounted) return;

    if (widget.viewModel.error == null) {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Erro ao sair: ${widget.viewModel.error}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Meu Perfil'),
              centerTitle: true,
              actions: <Widget>[
                MenuAnchor(
                  childFocusNode: _buttonFocusNode,
                  menuChildren: <Widget>[
                    MenuItemButton(
                      onPressed: () => Navigator.pushNamed(context, "/setting"),
                      child: const Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(width: 8),
                          Text("Configurações"),
                        ],
                      ),
                    ),
                    MenuItemButton(
                      onPressed: _handleLogout,
                      child: const Row(
                        children: [
                          Icon(Icons.logout),
                          SizedBox(width: 8),
                          Text("Sair"),
                        ],
                      ),
                    ),
                  ],
                  builder: (_, MenuController controller, Widget? child) {
                    return IconButton(
                      focusNode: _buttonFocusNode,
                      onPressed: () {
                        if (controller.isOpen) {
                          controller.close();
                        } else {
                          controller.open();
                        }
                      },
                      icon: const Icon(Icons.more_horiz),
                    );
                  },
                ),
              ],
              pinned: true,
              expandedHeight: 300.0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlexibleSpaceBar(
                  centerTitle: false,
                  background: Center(
                    child: ListenableBuilder(
                      listenable: widget.viewModel,
                      builder: (context, child) {
                        if (widget.viewModel.user == null) {
                          return const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(height: 10),
                              Text("Carregando perfil..."),
                            ],
                          );
                        }

                        final user = widget.viewModel.user!;

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundImage: NetworkImage(user.imageUrl),
                              onBackgroundImageError: (_, _) {},
                            ),
                            const SizedBox(height: 10),
                            Text(
                              user.fullName,
                              style: TextStyle(
                                fontSize:
                                    Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.fontSize ??
                                    20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              bottom: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Publicações', icon: Icon(Icons.grid_on)),
                  Tab(text: 'Playlists', icon: Icon(Icons.bookmark)),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Minhas Publicações')),
            Center(child: Text('Conteúdo Salvo')),
          ],
        ),
      ),
    );
  }
}
