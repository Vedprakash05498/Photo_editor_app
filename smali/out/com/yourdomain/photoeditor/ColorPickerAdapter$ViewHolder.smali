.class Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/ColorPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field colorPickerView:Landroid/view/View;

.field final synthetic this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;


# direct methods
.method public constructor <init>(Lcom/yourdomain/photoeditor/ColorPickerAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/ColorPickerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 88
    iput-object p1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    .line 89
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    const v0, 0x7f0a0071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->colorPickerView:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder$1;-><init>(Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;Lcom/yourdomain/photoeditor/ColorPickerAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method
