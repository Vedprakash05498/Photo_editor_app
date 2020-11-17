.class Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "ColorPickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/ColorPickerAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;Lcom/yourdomain/photoeditor/ColorPickerAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    .line 91
    iput-object p1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    iput-object p2, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;->val$this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->access$000(Lcom/yourdomain/photoeditor/ColorPickerAdapter;)Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 95
    iget-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->access$000(Lcom/yourdomain/photoeditor/ColorPickerAdapter;)Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->access$100(Lcom/yourdomain/photoeditor/ColorPickerAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;->onColorPickerClickListener(I)V

    .line 96
    :cond_2d
    return-void
.end method
