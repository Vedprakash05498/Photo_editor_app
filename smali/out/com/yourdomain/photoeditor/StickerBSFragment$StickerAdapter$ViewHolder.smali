.class Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickerBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imgSticker:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$1"    # Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 106
    iput-object p1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    const v0, 0x7f0a00c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->imgSticker:Landroid/widget/ImageView;

    .line 110
    new-instance v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;-><init>(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method
