.class Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "EmojiBSFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

.field final synthetic val$this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;)V
    .registers 3
    .param p1, "this$2"    # Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    .line 100
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    iput-object p2, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->val$this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->access$000(Lcom/yourdomain/photoeditor/EmojiBSFragment;)Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 104
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->access$000(Lcom/yourdomain/photoeditor/EmojiBSFragment;)Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->emojisList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;->onEmojiClick(Ljava/lang/String;)V

    .line 106
    :cond_2b
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->dismiss()V

    .line 107
    return-void
.end method
