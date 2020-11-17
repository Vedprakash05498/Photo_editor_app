.class Lja/burhanrashid52/photoeditor/PhotoEditor$3;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor;->addEmoji(Landroid/graphics/Typeface;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

.field final synthetic val$frmBorder:Landroid/widget/FrameLayout;

.field final synthetic val$imgClose:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 263
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    iput-object p2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$frmBorder:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$imgClose:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 266
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$frmBorder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$frmBorder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 267
    .local v0, "isBackgroundVisible":Z
    :goto_1b
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$frmBorder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    const/4 v4, 0x0

    goto :goto_23

    :cond_21
    sget v4, Lja/burhanrashid52/photoeditor/R$drawable;->rounded_border_tv:I

    :goto_23
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 268
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$imgClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    const/16 v4, 0x8

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$3;->val$frmBorder:Landroid/widget/FrameLayout;

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public onLongClick()V
    .registers 1

    .line 274
    return-void
.end method
