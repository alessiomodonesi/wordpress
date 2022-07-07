<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit352d2aa15f9766ed5f1d639b5f2b50f6
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'App\\Providers\\ThemeServiceProvider' => __DIR__ . '/../..' . '/app/Providers/ThemeServiceProvider.php',
        'App\\View\\Components\\Alert' => __DIR__ . '/../..' . '/app/View/Components/Alert.php',
        'App\\View\\Composers\\App' => __DIR__ . '/../..' . '/app/View/Composers/App.php',
        'App\\View\\Composers\\Post' => __DIR__ . '/../..' . '/app/View/Composers/Post.php',
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit352d2aa15f9766ed5f1d639b5f2b50f6::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit352d2aa15f9766ed5f1d639b5f2b50f6::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit352d2aa15f9766ed5f1d639b5f2b50f6::$classMap;

        }, null, ClassLoader::class);
    }
}
