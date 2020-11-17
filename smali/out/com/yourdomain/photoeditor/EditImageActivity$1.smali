.class Lcom/yourdomain/photoeditor/EditImageActivity$1;
.super Ljava/lang/Object;
.source "EditImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/EditImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/EditImageActivity;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 103
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$1;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$1;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    const-string v2, "Select Picture"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Lcom/yourdomain/photoeditor/EditImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$1;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/EditImageActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    return-void
.end method
