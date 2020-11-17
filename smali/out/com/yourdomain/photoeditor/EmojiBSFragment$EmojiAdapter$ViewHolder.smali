.class Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EmojiBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

.field txtEmoji:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$1"    # Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 96
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    .line 97
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    const v0, 0x7f0a0190

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->txtEmoji:Landroid/widget/TextView;

    .line 100
    new-instance v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;-><init>(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method
