.class Lja/burhanrashid52/photoeditor/PhotoEditor$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor;->addText(Ljava/lang/String;Lja/burhanrashid52/photoeditor/TextStyleBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

.field final synthetic val$frmBorder:Landroid/widget/FrameLayout;

.field final synthetic val$imgClose:Landroid/widget/ImageView;

.field final synthetic val$textInputTv:Landroid/widget/TextView;

.field final synthetic val$textRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 6
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 161
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    iput-object p2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$frmBorder:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$imgClose:Landroid/widget/ImageView;

    iput-object p4, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$textInputTv:Landroid/widget/TextView;

    iput-object p5, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$textRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 164
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$frmBorder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$frmBorder:Landroid/widget/FrameLayout;

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

    .line 165
    .local v0, "isBackgroundVisible":Z
    :goto_1b
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$frmBorder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    const/4 v4, 0x0

    goto :goto_23

    :cond_21
    sget v4, Lja/burhanrashid52/photoeditor/R$drawable;->rounded_border_tv:I

    :goto_23
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 166
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$imgClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    const/16 v4, 0x8

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$frmBorder:Landroid/widget/FrameLayout;

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onLongClick()V
    .registers 5

    .line 172
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$textInputTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "textInput":Ljava/lang/String;
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$textInputTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 174
    .local v1, "currentTextColor":I
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v2}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$800(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 175
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v2}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$800(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    move-result-object v2

    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$2;->val$textRootView:Landroid/view/View;

    invoke-interface {v2, v3, v0, v1}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onEditTextChangeListener(Landroid/view/View;Ljava/lang/String;I)V

    .line 177
    :cond_23
    return-void
.end method
