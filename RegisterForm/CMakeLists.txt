cmake_minimum_required(VERSION 3.16)

project(RegisterForm VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)


qt_add_executable(appRegisterForm
    main.cpp
)

qt_add_qml_module(appRegisterForm
    URI RegisterForm
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES Backgrounds.qrc
        RESOURCES Fonts.qrc
        RESOURCES Icons.qrc
        RESOURCES Images.qrc
        RESOURCES Logos.qrc
        QML_FILES
        QML_FILES CustomField.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appRegisterForm PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appRegisterForm
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appRegisterForm
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appRegisterForm
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
