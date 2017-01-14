<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_esplanade6');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '>6Dw(xO<.:L@Y1Tyt}m6?4Cd88/jr9s:5S-V3wOZa@hI7AK8Hg*U<;$x==WbT{0E');
define('SECURE_AUTH_KEY',  'wGLBX]^|-|V@-Q:A)4ql~0LpbzqMQ3=C<xh}Pc*mSFE&>*+V[Jh?%*ihO1)BpTz<');
define('LOGGED_IN_KEY',    '`JZ{%`A-QVSxq;-S(Wx$wCh|,b(lCm,EE8n[(lLdaZAGE($lp&@y^r}51rl<+lcz');
define('NONCE_KEY',        'sc&6#ETPNL(KSH,y9cQ`|d~Wiz{c${5@/S9h OLK!>OXB!~$&;!(9f| E)zIl^F,');
define('AUTH_SALT',        '|0FAS>$:0;K!d};%8|RnVK_+i}g08|V~KXGQV8+`T:vQJR5.$=((#-20+pNV:_[b');
define('SECURE_AUTH_SALT', 'i]oz1~y-+kR27a2ZFqoFG^J+dIt5S#!qfj=e).6a,LA|cCrFK&=-V*sDMgx@)*%4');
define('LOGGED_IN_SALT',   'K[r|:|XgvB%,^Tvl{Zcj?#!;y|m8d`?8:AC%}hL-M8T+VY]u9w[(Q_?MS<oKJirt');
define('NONCE_SALT',       'cH^_chn#Ngwu!x;;Ff)?$Ai@.,hkwZoN9m,>K;%59YnZ-)Q-vO9f1-gfBq_`y[Jr');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
