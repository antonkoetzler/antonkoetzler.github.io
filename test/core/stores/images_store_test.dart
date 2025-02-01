import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ImagesStore', () {
    const path = 'assets/images';
    expect(ImagesStore.arch, '$path/arch.svg');
    expect(ImagesStore.dart, '$path/dart.svg');
    expect(ImagesStore.docker, '$path/docker.svg');
    expect(ImagesStore.electron, '$path/electron.svg');
    expect(ImagesStore.flutter, '$path/flutter.svg');
    expect(ImagesStore.hyprland, '$path/hyprland.svg');
    expect(ImagesStore.javascript, '$path/javascript.png');
    expect(ImagesStore.kitty, '$path/kitty.png');
    expect(ImagesStore.laravel, '$path/laravel.svg');
    expect(ImagesStore.me, '$path/me.jpg');
    expect(ImagesStore.neovim, '$path/neovim.svg');
    expect(ImagesStore.node, '$path/node.png');
    expect(ImagesStore.php, '$path/php.svg');
    expect(ImagesStore.postgres, '$path/postgres.svg');
    expect(ImagesStore.react, '$path/react.svg');
    expect(ImagesStore.sqlite, '$path/sqlite.svg');
    expect(ImagesStore.typescript, '$path/typescript.svg');
  });
}
