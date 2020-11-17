.class Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FilterViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageFilterView:Landroid/widget/ImageView;

.field mTxtFilterName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 64
    iput-object p1, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    .line 65
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    const v0, 0x7f0a00be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->mImageFilterView:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0a0191

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->mTxtFilterName:Landroid/widget/TextView;

    .line 68
    new-instance v0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;-><init>(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
