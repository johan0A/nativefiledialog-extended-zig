const std = @import("std");
const root = @This();
const c = @cImport({
    @cInclude("X11/X.h");
    @cInclude("gdk/gdk.h");
    @cInclude("glib.h");
    @cInclude("gtk/gtk.h");
});

const declarations = struct {
    pub export fn gdk_window_set_transient_for(window: ?*c.GdkWindow, parent: ?*c.GdkWindow) callconv(.C) void {
        symbols.gdk_window_set_transient_for(window, parent);
    }

    pub export fn gtk_events_pending() callconv(.C) c.gboolean {
        return symbols.gtk_events_pending();
    }

    pub export fn gtk_main_iteration() callconv(.C) c.gboolean {
        return symbols.gtk_main_iteration();
    }

    pub export fn gdk_x11_window_foreign_new_for_display(display: ?*c.GdkDisplay, window: c.Window) callconv(.C) ?*c.GdkWindow {
        return symbols.gdk_x11_window_foreign_new_for_display(display, window);
    }

    pub export fn gdk_display_manager_open_display(manager: ?*c.GdkDisplayManager, name: [*:0]const u8) callconv(.C) ?*c.GdkDisplay {
        return symbols.gdk_display_manager_open_display(manager, name);
    }

    pub export fn gdk_set_allowed_backends(backends: [*:0]const u8) callconv(.C) void {
        symbols.gdk_set_allowed_backends(backends);
    }

    pub export fn g_slist_free_1(list: ?*c.GSList) callconv(.C) void {
        symbols.g_slist_free_1(list);
    }

    pub export fn gdk_display_get_type() callconv(.C) c.GType {
        return symbols.gdk_display_get_type();
    }

    pub export fn gdk_display_manager_list_displays(manager: ?*c.GdkDisplayManager) callconv(.C) ?*c.GSList {
        return symbols.gdk_display_manager_list_displays(manager);
    }

    pub export fn gdk_display_manager_get() callconv(.C) ?*c.GdkDisplayManager {
        return symbols.gdk_display_manager_get();
    }

    pub export fn g_slist_free(list: ?*c.GSList) callconv(.C) void {
        symbols.g_slist_free(list);
    }

    pub export fn g_slist_length(list: ?*c.GSList) callconv(.C) c.guint {
        return symbols.g_slist_length(list);
    }

    pub export fn g_slist_nth_data(list: ?*c.GSList, n: c.guint) callconv(.C) ?*anyopaque {
        return symbols.g_slist_nth_data(list, n);
    }

    pub export fn gtk_file_chooser_get_filter(chooser: ?*c.GtkFileChooser) callconv(.C) ?*c.GtkFileFilter {
        return symbols.gtk_file_chooser_get_filter(chooser);
    }

    pub export fn gtk_file_chooser_get_current_name(chooser: ?*c.GtkFileChooser) callconv(.C) ?[*:0]u8 {
        return symbols.gtk_file_chooser_get_current_name(chooser);
    }

    pub export fn gtk_file_chooser_set_current_name(chooser: ?*c.GtkFileChooser, name: [*:0]const u8) callconv(.C) void {
        symbols.gtk_file_chooser_set_current_name(chooser, name);
    }

    pub export fn gtk_file_chooser_set_do_overwrite_confirmation(chooser: ?*c.GtkFileChooser, do_overwrite_confirmation: c.gboolean) callconv(.C) void {
        symbols.gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation);
    }

    pub export fn gtk_dialog_add_button(dialog: ?*c.GtkDialog, button_text: [*:0]const u8, response_id: c_int) callconv(.C) ?*c.GtkWidget {
        return symbols.gtk_dialog_add_button(dialog, button_text, response_id);
    }

    pub export fn gtk_file_chooser_get_filenames(chooser: ?*c.GtkFileChooser) callconv(.C) ?*c.GSList {
        return symbols.gtk_file_chooser_get_filenames(chooser);
    }

    pub export fn gtk_file_chooser_set_select_multiple(chooser: ?*c.GtkFileChooser, select_multiple: c.gboolean) callconv(.C) void {
        symbols.gtk_file_chooser_set_select_multiple(chooser, select_multiple);
    }

    pub export fn gtk_widget_destroy(widget: ?*c.GtkWidget) callconv(.C) void {
        symbols.gtk_widget_destroy(widget);
    }

    pub export fn g_object_unref(object: ?*anyopaque) callconv(.C) void {
        symbols.g_object_unref(object);
    }

    pub export fn g_signal_handler_disconnect(instance: ?*anyopaque, handler_id: c.gulong) callconv(.C) void {
        symbols.g_signal_handler_disconnect(instance, handler_id);
    }

    pub export fn gtk_dialog_run(dialog: ?*c.GtkDialog) callconv(.C) c_int {
        return symbols.gtk_dialog_run(dialog);
    }

    pub export fn gdk_x11_get_server_time(window: ?*c.GdkWindow) callconv(.C) c.guint32 {
        return symbols.gdk_x11_get_server_time(window);
    }

    pub export fn gtk_window_present_with_time(window: ?*c.GtkWindow, timestamp: c.guint32) callconv(.C) void {
        symbols.gtk_window_present_with_time(window, timestamp);
    }

    pub export fn gdk_window_set_events(window: ?*c.GdkWindow, event_mask: c.GdkEventMask) callconv(.C) void {
        symbols.gdk_window_set_events(window, event_mask);
    }

    pub export fn gdk_window_get_events(window: ?*c.GdkWindow) callconv(.C) c.GdkEventMask {
        return symbols.gdk_window_get_events(window);
    }

    pub export fn gtk_widget_get_window(widget: ?*c.GtkWidget) callconv(.C) ?*c.GdkWindow {
        return symbols.gtk_widget_get_window(widget);
    }

    pub export fn gtk_widget_get_display(widget: ?*c.GtkWidget) callconv(.C) ?*c.GdkDisplay {
        return symbols.gtk_widget_get_display(widget);
    }

    pub export fn g_type_check_instance_is_a(instance: ?*c.GTypeInstance, iface_type: c.GType) callconv(.C) c.gboolean {
        return symbols.g_type_check_instance_is_a(instance, iface_type);
    }

    pub export fn gdk_x11_display_get_type() callconv(.C) c.GType {
        return symbols.gdk_x11_display_get_type();
    }

    pub export fn gtk_widget_show_all(widget: ?*c.GtkWidget) callconv(.C) void {
        symbols.gtk_widget_show_all(widget);
    }

    pub export fn gtk_widget_get_type() callconv(.C) c.GType {
        return symbols.gtk_widget_get_type();
    }

    pub export fn gdk_window_get_screen(window: ?*c.GdkWindow) callconv(.C) ?*c.GdkScreen {
        return symbols.gdk_window_get_screen(window);
    }

    pub export fn gtk_window_set_screen(window: ?*c.GtkWindow, screen: ?*c.GdkScreen) callconv(.C) void {
        symbols.gtk_window_set_screen(window, screen);
    }

    pub export fn gtk_window_get_type() callconv(.C) c.GType {
        return symbols.gtk_window_get_type();
    }

    pub export fn g_signal_connect_data(instance: ?*anyopaque, detailed_signal: [*:0]const u8, c_handler: c.GCallback, data: ?*anyopaque, destroy_data: c.GClosureNotify, connect_flags: c.GConnectFlags) callconv(.C) c.gulong {
        return symbols.g_signal_connect_data(instance, detailed_signal, c_handler, data, destroy_data, connect_flags);
    }

    pub export fn gtk_file_chooser_add_filter(chooser: ?*c.GtkFileChooser, filter: ?*c.GtkFileFilter) callconv(.C) void {
        symbols.gtk_file_chooser_add_filter(chooser, filter);
    }

    pub export fn gtk_file_filter_set_name(filter: ?*c.GtkFileFilter, name: [*:0]const u8) callconv(.C) void {
        symbols.gtk_file_filter_set_name(filter, name);
    }

    pub export fn gtk_file_chooser_set_current_folder(chooser: ?*c.GtkFileChooser, filename: [*:0]const u8) callconv(.C) c.gboolean {
        return symbols.gtk_file_chooser_set_current_folder(chooser, filename);
    }

    pub export fn gtk_file_filter_add_pattern(filter: ?*c.GtkFileFilter, pattern: [*:0]const u8) callconv(.C) void {
        symbols.gtk_file_filter_add_pattern(filter, pattern);
    }

    pub export fn gtk_file_filter_new() callconv(.C) ?*c.GtkFileFilter {
        return symbols.gtk_file_filter_new();
    }

    pub export fn gtk_file_chooser_get_filename(chooser: ?*c.GtkFileChooser) callconv(.C) ?[*:0]u8 {
        return symbols.gtk_file_chooser_get_filename(chooser);
    }

    pub export fn gtk_dialog_get_type() callconv(.C) c.GType {
        return symbols.gtk_dialog_get_type();
    }

    pub export fn g_type_check_instance_cast(instance: ?*c.GTypeInstance, iface_type: c.GType) callconv(.C) ?*c.GTypeInstance {
        return symbols.g_type_check_instance_cast(instance, iface_type);
    }

    pub export fn gtk_file_chooser_get_type() callconv(.C) c.GType {
        return symbols.gtk_file_chooser_get_type();
    }

    pub export fn gtk_file_chooser_dialog_new(title: ?[*:0]const u8, parent: ?*c.GtkWindow, action: c.GtkFileChooserAction, first_button_text: ?[*:0]const u8, ...) callconv(.C) ?*c.GtkWidget {
        return @call(.always_tail, symbols.gtk_file_chooser_dialog_new, .{ title, parent, action, first_button_text });
    }

    pub export fn g_free(mem: ?*anyopaque) callconv(.C) void {
        symbols.g_free(mem);
    }

    pub export fn gtk_init_check(argc: ?*c_int, argv: ?*[*][*:0]u8) callconv(.C) c.gboolean {
        symbols = loadLibSymboles(Symbols(declarations));
        return symbols.gtk_init_check(argc, argv);
    }
};

comptime {
    _ = declarations;
}

pub var symbols: Symbols(declarations) = undefined;

fn loadLibSymboles(T: type) T {
    var result: T = undefined;
    const handle = std.c.dlopen("libgtk-3.so.0", std.c.RTLD.LAZY) orelse std.c.dlopen("libgtk-x11-2.0.so.0", std.c.RTLD.LAZY) orelse @panic("could not find the gtk library");
    inline for (
        @typeInfo(T).Struct.fields,
    ) |field| {
        @field(result, field.name) = @ptrCast(
            std.c.dlsym(handle, field.name) orelse @panic("could not find " ++ field.name ++ " symbole"),
        );
    }
    return result;
}

fn Symbols(comptime namespace: type) type {
    const Type = std.builtin.Type;

    const base_function_field: Type.StructField = @typeInfo(struct {
        function: *const fn () callconv(.C) void,
    }).Struct.fields[0];

    var result: Type.Struct = @typeInfo(struct {}).Struct;
    for (@typeInfo(namespace).Struct.decls) |decl| {
        const DeclType: type = @TypeOf(@field(namespace, decl.name));
        if (@typeInfo(DeclType) != .Fn) continue;

        result.fields = result.fields ++ .{blk: {
            var field = base_function_field;
            field.name = decl.name;
            field.type = *const DeclType;
            break :blk field;
        }};
    }
    return @Type(Type{ .Struct = result });
}
