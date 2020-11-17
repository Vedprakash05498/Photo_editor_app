.class public Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EmojiBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/EmojiBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field emojisList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;


# direct methods
.method public constructor <init>(Lcom/yourdomain/photoeditor/EmojiBSFragment;)V
    .registers 3
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/EmojiBSFragment;

    .line 73
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getEmojis(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->emojisList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 73
    check-cast p1, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->onBindViewHolder(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 85
    iget-object v0, p1, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;->txtEmoji:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;Landroid/view/View;)V

    return-object v1
.end method
