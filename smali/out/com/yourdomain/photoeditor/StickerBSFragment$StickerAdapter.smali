.class public Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickerBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/StickerBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field stickerList:[I

.field final synthetic this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;


# direct methods
.method public constructor <init>(Lcom/yourdomain/photoeditor/StickerBSFragment;)V
    .registers 3
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/StickerBSFragment;

    .line 79
    iput-object p1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 81
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->stickerList:[I

    return-void

    nop

    :array_10
    .array-data 4
        0x7f0800ba
        0x7f0800b8
        0x7f0800b9
        0x7f08007f
        0x7f080080
        0x7f080081
        0x7f080069
        0x7f08006a
        0x7f08006b
        0x7f08006c
        0x7f08006d
        0x7f08006e
        0x7f08006f
        0x7f080070
        0x7f080077
        0x7f080078
        0x7f080095
        0x7f080096
        0x7f080097
        0x7f080079
        0x7f08007a
        0x7f08007b
        0x7f08007c
        0x7f08007d
        0x7f08007e
        0x7f0800bc
        0x7f0800bd
    .end array-data
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->stickerList:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 79
    check-cast p1, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->onBindViewHolder(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 95
    iget-object v0, p1, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;->imgSticker:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->stickerList:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;Landroid/view/View;)V

    return-object v1
.end method
