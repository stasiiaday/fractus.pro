<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'fractuspro');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'U%cV+`zC8-fs:Q2;+)[|59yX])HG~((>R>C6)P_sS1S3V)U)<yQY4DKvEH{/M@>&');
define('SECURE_AUTH_KEY',  'mgoy{3k{(?9{V&}(L|&8}bl.d{AO=,XcU-KA!iLe7)..6Tx($<=yQ3#M1W0ld:&*');
define('LOGGED_IN_KEY',    'FX<=zcbF})f^PbR*a&fGF_`X-EP;RHMlc2M?NN7^P=3(tv1!a3 jh=(G/5AAvL&r');
define('NONCE_KEY',        '-9`q.pGBP_e>7^V|YUMk]f96mC0 ;U/$o~Hnygn$G#?_@Jn_#o{oanDK1l-B]|Od');
define('AUTH_SALT',        '57Fa:qjwhTA3Dj-RlP&)z.R6]0043f:Xi&rYgAuBqqW}1Gv9VeL3R{[ZQ53b u=Y');
define('SECURE_AUTH_SALT', '|/I,#VxBq;&@b&}7Sm3^k[!,zM%Y]#7q44@9*R_]YaFK*0P&F{Q0IV89TQ&dz&]D');
define('LOGGED_IN_SALT',   'gjk OD&tm@ ]r(vH#Gq!HU{:9GhgVD/~FV*uJc%i|.^q3iOHTVIKVqtf2TBJQAJ>');
define('NONCE_SALT',       '(AU-l:@y:W 2Ibh30Z&afMdDqnqRbR`MUkwmqgVNo@D1?DIn0C@.D^U}>Q2%!gBU');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'y65g_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
