{ pkgs, lib, ... }:

{

home.file.".config/swaync/config.json".text = ''
{
  "$schema": "/etc/xdg/swaync/configSchema.json",
  "positionX": "right",
  "positionY": "top",
  "layer": "overlay",
  "control-center-layer": "top",
  "layer-shell": true,
  "cssPriority": "application",
  "control-center-margin-top": 0,
  "control-center-margin-bottom": 40,
  "control-center-margin-right": 5,
  "control-center-margin-left": 0,
  "notification-2fa-action": true,
  "notification-inline-replies": false,
  "notification-icon-size": 64,
  "notification-body-image-height": 100,
  "notification-body-image-width": 100,
  "timeout": 10,
  "timeout-low": 5,
  "timeout-critical": 0,
  "fit-to-screen": true,
  "relative-timestamps": true,
  "control-center-width": 400,
  "control-center-height": 600,
  "notification-window-width": 500,
  "keyboard-shortcuts": true,
  "image-visibility": "when-available",
  "transition-time": 200,
  "hide-on-clear": false,
  "hide-on-action": true,
  "script-fail-notify": true,
  "scripts": {
    "example-script": {
      "exec": "echo 'Do something...'",
      "urgency": "Normal"
    },
    "example-action-script": {
      "exec": "echo 'Do something actionable!'",
      "urgency": "Normal",
      "run-on": "action"
    }
  },
  "notification-visibility": {
    "example-name": {
      "state": "muted",
      "urgency": "Low",
      "app-name": "Spotify"
    }
  },
  "widgets": [
    "title",
    "volume",
    "notifications",
    "mpris",
    "buttons-grid"
  ],
  "widget-config": {
    "inhibitors": {
      "text": "Inhibitors",
      "button-text": "Clear All",
      "clear-all-button": true
    },
    "title": {
      "text": "Notifications",
      "clear-all-button": true,
      "button-text": "Clear All"
    },
    "dnd": {
      "text": "Do Not Disturb"
    },
    "label": {
      "max-lines": 5,
      "text": "Label Text"
    },
    "mpris": {
      "image-size": 80,
      "image-radius": 12
    },
    "volume": {
      "label": "󰕾"
     },
    "backlight": {
      "label": "󰃟"
     },
  
            "buttons-grid": {
            "actions": [
                {
                    "label": "󰤨 Wi-FI",
                    "command": "nm-connection-editor"
                },
                {
                    "label": "󰕾 Mute",
                    "command": "pactl set-sink-mute @DEFAULT_SINK@ toggle"
        
                },
		{
                    "label": "⏻ Power",
                    "command": "/home/islam/.config/rofi/powermenu.sh"

		},
		{
		    "label": " Background",
		    "command": "waypaper"
		},
	        {
		    "label": "󰃠 sunseton",
		    "command": "hyprsunset"
		},
		{
		    "label": "󰃠 sunsetoff",
		    "command": "pkill hyprsunset"
		}
	     ]
	}

  }
}
'';

home.file.".config/swaync/style.css".text = ''
@import url('../../.cache/wal/colors-waybar.css');

/*@define-color cc-bg rgba(46, 46, 46, 0.7);
@define-color noti-border-color rgba(255, 255, 255, 0.15);
@define-color noti-bg rgba(48, 48, 48, 0.8);
@define-color noti-bg-opaque rgb(48, 48, 48);
@define-color noti-bg-darker rgb(38, 38, 38);
@define-color noti-bg-hover rgb(56, 56, 56);
@define-color noti-bg-hover-opaque rgb(56, 56, 56);
@define-color noti-bg-focus rgba(68, 68, 68, 0.6);
@define-color noti-close-bg rgba(255, 255, 255, 0.1);
@define-color noti-close-bg-hover rgba(255, 255, 255, 0.15);
@define-color text-color rgb(255, 255, 255);
@define-color text-color-disabled rgb(150, 150, 150);
@define-color bg-selected rgb(0, 128, 255); */


* {
  font-size: 16px;
  font-family: "noto sans nerd font";
}

.notification-row {
  outline: none;
}

.notification-row:focus, .notification-row:hover {
  background: @background;
}

.notification-row .notification-background {
  padding: 6px 12px;
}

.notification-row .notification-background .close-button {
  /* The notification Close Button */
  background: @color2;
  color: @foreground;
  text-shadow: none;
  padding: 0;
  border-radius: 100%;
  margin-top: 5px;
  margin-right: 5px;
  box-shadow: none;
  border: none;
  min-width: 24px;
  min-height: 24px;
}

.notification-row .notification-background .close-button:hover {
  box-shadow: none;
  background: @color2;
  transition: background 0.15s ease-in-out;
  border: none;
}

.notification-row .notification-background .notification {
  /* The actual notification */
  border-radius: 5px;
  border: 2px solid @color1;
  padding: 0;
  transition: background 0.15s ease-in-out;
  background: @background;
}

.notification-row .notification-background .notification.low {
  /* Low Priority Notification */
}

.notification-row .notification-background .notification.normal {
  /* Normal Priority Notification */
}

.notification-row .notification-background .notification.critical {
  /* Critical Priority Notification */
}

.notification-row .notification-background .notification .notification-action, .notification-row .notification-background .notification .notification-default-action {
  padding: 4px;
  margin: 0;
  box-shadow: none;
  background: transparent;
  border: none;
  color: @foreground;
  transition: background 0.15s ease-in-out;
}

.notification-row .notification-background .notification .notification-action:hover, .notification-row .notification-background .notification .notification-default-action:hover {
  -gtk-icon-effect: none;
  background: @color3;
}

.notification-row .notification-background .notification .notification-default-action {
  /* The large action that also displays the notification summary and body */
  border-radius: 5px;
}

.notification-row .notification-background .notification .notification-default-action:not(:only-child) {
  /* When alternative actions are visible */
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content {
  background: transparent;
  border-radius: 5px;
  padding: 4px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .image {
  /* Notification Primary Image */
  -gtk-icon-effect: none;
  border-radius: 100px;
  /* Size in px */
  margin: 4px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .app-icon {
  /* Notification app icon (only visible when the primary image is set) */
  -gtk-icon-effect: none;
  -gtk-icon-shadow: 0 1px 4px black;
  margin: 6px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .text-box .summary {
  /* Notification summary/title */
  font-size: 15px;
  font-weight: bold;
  background: transparent;
  color: @foreground;
  text-shadow: none;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .text-box .time {
  /* Notification time-ago */
  font-size: 14px;
  font-weight: bold;
  background: transparent;
  color: @foreground;
  text-shadow: none;
  margin-right: 30px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .text-box .body {
  /* Notification body */
  font-size: 15px;
  font-weight: normal;
  background: transparent;
  color: @text-color;
  text-shadow: none;
}

.notification-row .notification-background .notification .notification-default-action .notification-content progressbar {
  /* The optional notification progress bar */
  margin-top: 4px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .body-image {
  /* The "extra" optional bottom notification image */
  margin-top: 4px;
  background-color: white;
  border-radius: 5px;
  -gtk-icon-effect: none;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .inline-reply {
  /* The inline reply section */
  margin-top: 4px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .inline-reply .inline-reply-entry {
  background: @background;
  color: @foreground;
  caret-color: @foreground;
  border: 2px solid @color1;
  border-radius: 5px;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .inline-reply .inline-reply-button {
  margin-left: 4px;
  background: @background;
  border: 2px solid @color1;
  border-radius: 5px;
  color: @foreground;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .inline-reply .inline-reply-button:disabled {
  background: initial;
  color: @color5;
  border: 2px solid @color1;
  border-color: transparent;
}

.notification-row .notification-background .notification .notification-default-action .notification-content .inline-reply .inline-reply-button:hover {
  background: @color2;
}

.notification-row .notification-background .notification .notification-action {
  /* The alternative actions below the default action */
  border-top: 2px solid @color1;
  border-radius: 0px;
  border-right: 2px solid @color1;
}

.notification-row .notification-background .notification .notification-action:first-child {
  /* add bottom border radius to eliminate clipping */
  border-bottom-left-radius: 12px;
}

.notification-row .notification-background .notification .notification-action:last-child {
  border-bottom-right-radius: 12px;
  border-right: none;
}

.notification-group {
  /* Styling only for Grouped Notifications */
}

.notification-group.low {
  /* Low Priority Group */
}

.notification-group.normal {
  /* Low Priority Group */
}

.notification-group.critical {
  /* Low Priority Group */
}

.notification-group .notification-group-buttons, .notification-group .notification-group-headers {
  margin: 0 16px;
  color: @foreground;
}

.notification-group .notification-group-headers {
  /* Notification Group Headers */
}

.notification-group .notification-group-headers .notification-group-icon {
  color: @foreground;
}

.notification-group .notification-group-headers .notification-group-header {
  color: @foreground;
}

.notification-group .notification-group-buttons {
  /* Notification Group Buttons */
}

.notification-group.collapsed .notification-row .notification {
  background-color: @background;
}

.notification-group.collapsed .notification-row:not(:last-child) {
  /* Top notification in stack */
  /* Set lower stacked notifications opacity to 0 */
}

.notification-group.collapsed .notification-row:not(:last-child) .notification-action,
.notification-group.collapsed .notification-row:not(:last-child) .notification-default-action {
  opacity: 0;
}

.notification-group.collapsed:hover .notification-row:not(:only-child) .notification {
  background-color: @color2;
}

.control-center {
  /* The Control Center which contains the old notifications + widgets */
  background: @background;
  color: @foreground;
  border-radius: 5px;
  border: 2px solid @color1;
}

.control-center .control-center-list-placeholder {
  /* The placeholder when there are no notifications */
  opacity: 0.5;
}

.control-center .control-center-list {
  /* List of notifications */
  background: transparent;
}

.control-center .control-center-list .notification {
  box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 3px 1px rgba(0, 0, 0, 0.7), 0 2px 6px 2px rgba(0, 0, 0, 0.3);
}

.control-center .control-center-list .notification .notification-default-action,
.control-center .control-center-list .notification .notification-action {
  transition: opacity 400ms ease-in-out, background 0.15s ease-in-out;
}

.control-center .control-center-list .notification .notification-default-action:hover,
.control-center .control-center-list .notification .notification-action:hover {
  background-color: @color2;
}

.blank-window {
  /* Window behind control center and on all other monitors */
  background: transparent;
}

.floating-notifications {
  background: transparent;
}

.floating-notifications .notification {
  box-shadow: none;
}

/*** Widgets ***/
/* Title widget */
.widget-title {
  color: @foreground;
  margin: 8px;
  font-size: 1.5rem;
}

.widget-title > button {
  font-size: initial;
  color: @foreground;
  text-shadow: none;
  background: @background;
  border: 2px solid @color1;
  box-shadow: none;
  border-radius: 5px;
  padding: 5px;
}

.widget-title > button:hover {
  background: @color2;
}

/* DND widget */
.widget-dnd {
  color: @foreground;
  margin: 8px;
  font-size: 1.1rem;
}

.widget-dnd > switch {
  font-size: initial;
  border-radius: 12px;
  background: @background;
  border: 2px solid @color1;
  box-shadow: none;
}

.widget-dnd > switch:checked {
  background: @color1;
}

.widget-dnd > switch slider {
  background: @color2;
  border-radius: 12px;
}

/* Label widget */
.widget-label {
  margin: 8px;
}

.widget-label > label {
  font-size: 1.1rem;
}

/* Mpris widget */
@define-color mpris-album-art-overlay rgba(0, 0, 0, 0.55);
@define-color mpris-button-hover rgba(0, 0, 0, 0.50);
.widget-mpris {
  /* The parent to all players */
}

.widget-mpris .widget-mpris-player {
  padding: 8px;
  margin: 14px;
  background-color: @mpris-album-art-overlay;
  border-radius: 12px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.75);
}

.widget-mpris .widget-mpris-player button:hover {
  /* The media player buttons (play, pause, next, etc...) */
  background: @color2;
}

.widget-mpris .widget-mpris-player .widget-mpris-album-art {
  border-radius: 12px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.75);
}

.widget-mpris .widget-mpris-player .widget-mpris-title {
  font-weight: bold;
  font-size: 1.25rem;
}

.widget-mpris .widget-mpris-player .widget-mpris-subtitle {
  font-size: 1.1rem;
}

.widget-mpris .widget-mpris-player > box > button {
  /* Change player control buttons */
}

.widget-mpris .widget-mpris-player > box > button:hover {
  background-color: @color2;
}

.widget-mpris > box > button {
  /* Change player side buttons */
}

.widget-mpris > box > button:disabled {
  /* Change player side buttons insensitive */
}

/* Buttons widget */
.widget-buttons-grid {
  font-size: 15px;
  padding: 8px;
  margin: 14px;
  border-radius: 5px;
  background-color: @background;
  border: 2px solid @color1;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.75);
}

.widget-buttons-grid > flowbox > flowboxchild > button {
  background: @color1;
  border-radius: 7px;
  margin: 2px;
  padding: 5px;
  color: @background;
}

.widget-buttons-grid > flowbox > flowboxchild > button:hover {
  background: @color4;
  transition: all 0.3s ease-in-out;
}

.widget-buttons-grid > flowbox > flowboxchild > button.toggle:checked {
  /* style given to the active toggle button */
}

/* Menubar widget */
.widget-menubar > box > .menu-button-bar > button {
  border: none;
  background: transparent;
}

/* .AnyName { Name defined in config after #
  background-color: @noti-bg;
  padding: 8px;
  margin: 8px;
  border-radius: 12px;
}

.AnyName>button {
  background: transparent;
  border: none;
}

.AnyName>button:hover {
  background-color: @noti-bg-hover;
} */
.topbar-buttons > button {
  /* Name defined in config after # */
  border: none;
  background: transparent;
}

/* Volume widget */

trough {
  border-radius: 5px;
  background: @background;
  border: 1px solid @background;
}

trough highlight {
  /* ´trough´ is the background of the slider, ´highlight´ is the actual slider */
  padding-top: 1px;
  background: @color1;
  border: 1px solid @color1;
  border-radius: 5px;
}

trough slider {
  padding: 1px;
  background: @color1;
  border: 1px solid @color1;
}
trough slider:hover {
  padding: 1px;
  background: @color1;
}

.widget-volume {
  background-color: alpha(@background, 0.0);
  border-radius: 20px 20px 0px 0px;
  font-size: 15px;
  margin-left: 10px;
  margin-right: 10px;
  padding-bottom: 5px;
  border: 0px solid transparent;
}

/* Backlight widget */
.widget-backlight {
  background-color: @background;
  padding: 8px;
  margin: 8px;
  border-radius: 12px;
}

/* Inhibitors widget */
.widget-inhibitors {
  margin: 8px;
  font-size: 1.5rem;
}

.widget-inhibitors > button {
  font-size: initial;
  color: @white;
  text-shadow: none;
  background: @background;
  border: 2px solid @color1;
  box-shadow: none;
  border-radius: 12px;
}

.widget-inhibitors > button:hover {
  background: @color2;
}
'';

}
