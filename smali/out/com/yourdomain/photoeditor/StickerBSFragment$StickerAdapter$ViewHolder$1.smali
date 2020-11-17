.class Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "StickerBSFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

.field final synthetic val$this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;)V
    .registers 3
    .param p1, "this$2"    # Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    .line 110
    iput-object p1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    iput-object p2, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->val$this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->access$000(Lcom/yourdomain/photoeditor/StickerBSFragment;)Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 114
    iget-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->access$000(Lcom/yourdomain/photoeditor/StickerBSFragment;)Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    .line 115
    invoke-virtual {v1}, Lcom/yourdomain/photoeditor/StickerBSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    iget-object v2, v2, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->stickerList:[I

    iget-object v3, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    .line 116
    invoke-virtual {v3}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->getLayoutPosition()I

    move-result v3

    aget v2, v2, v3

    .line 115
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;->onStickerClick(Landroid/graphics/Bitmap;)V

    .line 118
    :cond_35
    iget-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder$1;->this$2:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->this$1:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->dismiss()V

    .line 119
    return-void
.end method
