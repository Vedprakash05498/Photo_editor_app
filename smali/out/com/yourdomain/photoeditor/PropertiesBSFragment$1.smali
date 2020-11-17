.class Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;
.super Ljava/lang/Object;
.source "PropertiesBSFragment.java"

# interfaces
.implements Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/PropertiesBSFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/PropertiesBSFragment;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/PropertiesBSFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    .line 54
    iput-object p1, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorPickerClickListener(I)V
    .registers 3
    .param p1, "colorCode"    # I

    .line 57
    iget-object v0, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->access$000(Lcom/yourdomain/photoeditor/PropertiesBSFragment;)Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 58
    iget-object v0, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->access$000(Lcom/yourdomain/photoeditor/PropertiesBSFragment;)Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;->onColorChanged(I)V

    .line 61
    :cond_16
    return-void
.end method
