# imgui-sfml
Dear imgui with SFML bindings.

## Purpose
This library is a fork (copy) of the popular [Dear imgui](https://github.com/ocornut/imgui) library with [SFML bindings](https://github.com/eliasdaler/imgui-sfml). The goal of this library is to build imgui with SFML bindings as one, without the need for any manual steps.

## Howto
In your project folder, clone the repository like this:

```
git clone https://github.com/kjetand/imgui-sfml
```

or add it as a submodule of your git local repository:

```
git submodule add https://github.com/kjetand/imgui-sfml
```

Your CMake file will then look something like this:

```
project(your-project)

add_subdirectory(imgui-sfml)

include_directories(
  ${IMGUI_SFML_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME} ...)
target_link_libraries(${PROJECT_NAME} imgui-sfml)
```

## License
Licensed under the [MIT License](LICENSE).
