.class public Lcom/yourdomain/photoeditor/EmojiBSFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "EmojiBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;,
        Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;
    }
.end annotation


# instance fields
.field private mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private mEmojiListener:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/yourdomain/photoeditor/EmojiBSFragment$1;

    invoke-direct {v0, p0}, Lcom/yourdomain/photoeditor/EmojiBSFragment$1;-><init>(Lcom/yourdomain/photoeditor/EmojiBSFragment;)V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment;->mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/EmojiBSFragment;)Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EmojiBSFragment;

    .line 20
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment;->mEmojiListener:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;

    return-object v0
.end method


# virtual methods
.method public setEmojiListener(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;)V
    .registers 2
    .param p1, "emojiListener"    # Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;

    .line 69
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment;->mEmojiListener:Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;

    .line 70
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .line 50
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 51
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0031

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 54
    .local v1, "params":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 56
    .local v2, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_30

    instance-of v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v3, :cond_30

    .line 57
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment;->mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 59
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    const v3, 0x7f0a0125

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .local v3, "rvEmoji":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .local v4, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v5, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;

    invoke-direct {v5, p0}, Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;-><init>(Lcom/yourdomain/photoeditor/EmojiBSFragment;)V

    .line 65
    .local v5, "emojiAdapter":Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiAdapter;
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    return-void
.end method
