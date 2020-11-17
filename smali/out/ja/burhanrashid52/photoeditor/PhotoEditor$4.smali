.class Lja/burhanrashid52/photoeditor/PhotoEditor$4;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor;->getLayout(Lja/burhanrashid52/photoeditor/ViewType;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

.field final synthetic val$finalRootView:Landroid/view/View;

.field final synthetic val$viewType:Lja/burhanrashid52/photoeditor/ViewType;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V
    .registers 4
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 357
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$4;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    iput-object p2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$4;->val$finalRootView:Landroid/view/View;

    iput-object p3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$4;->val$viewType:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 360
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$4;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$4;->val$finalRootView:Landroid/view/View;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$4;->val$viewType:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-static {v0, v1, v2}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$900(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 361
    return-void
.end method
