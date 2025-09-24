cmake_minimum_required(VERSION 3.16)

project(LoginForm VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_add_executable(appLoginForm
    main.cpp
)

qt_add_qml_module(appLoginForm
    URI LoginForm
    VERSION 1.0
    RESOURCES
        Fonts.qrc
        Icons.qrc
        Logos.qrc
        Icons3d.qrc
    QML_FILES
        Main.qml
        Utils/CustomInput.qml
        Utils/CustomCheckbox.qml
        Utils/CustomButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appLoginForm PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appLoginForm
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appLoginForm
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appLoginForm
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
