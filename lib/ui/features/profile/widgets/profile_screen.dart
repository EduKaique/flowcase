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
  final int id = 1; //id fake apenas para simular

  @override
  void initState() {
    super.initState();
    widget.viewModel.loadUser(id);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
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
                        spacing: 8.0,
                        children: [Icon(Icons.settings), Text("Configurações")],
                      ),
                    ),
                    MenuItemButton(
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        (route) => false,
                      ),
                      child: const Row(
                        spacing: 8.0,
                        children: [Icon(Icons.logout), Text("Sair")],
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
              floating: false,
              expandedHeight: 300.0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlexibleSpaceBar(
                  centerTitle: false,
                  background: Center(
                    child: ListenableBuilder(
                      listenable: widget.viewModel,
                      builder: (context, child) {
                        if (widget.viewModel.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (widget.viewModel.error != null) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.red,
                                  size: 48,
                                ),
                                Text('Erro: ${widget.viewModel.error}'),
                                ElevatedButton(
                                  onPressed: () =>
                                      widget.viewModel.loadUser(id),
                                  child: const Text("Tentar novamente"),
                                ),
                              ],
                            ),
                          );
                        }

                        if (widget.viewModel.user == null) {
                          return const Center(
                            child: Text("Nenhum dado de perfil encontrado."),
                          );
                        }

                        final user = widget.viewModel.user!;

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundImage: NetworkImage(user.imageUrl),
                            ),
                            SizedBox(height: 10),
                            Text(
                              user.fullName,
                              style: TextStyle(
                                fontSize: Theme.of(
                                  context,
                                ).textTheme.titleLarge!.fontSize,
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
          children: [
            const Center(child: Text('Minhas Publicações')),
            const Center(child: Text('Conteúdo Salvo')),
          ],
        ),
      ),
    );
  }
}
