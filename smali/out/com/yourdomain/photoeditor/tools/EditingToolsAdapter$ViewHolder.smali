.class Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EditingToolsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imgToolIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

.field txtTool:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 73
    iput-object p1, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    .line 74
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 75
    const v0, 0x7f0a00c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->imgToolIcon:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0a0194

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->txtTool:Landroid/widget/TextView;

    .line 77
    new-instance v0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
