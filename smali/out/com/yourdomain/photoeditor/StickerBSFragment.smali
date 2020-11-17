.class public Lcom/yourdomain/photoeditor/StickerBSFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "StickerBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;,
        Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;
    }
.end annotation


# instance fields
.field private mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private mStickerListener:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/yourdomain/photoeditor/StickerBSFragment$1;

    invoke-direct {v0, p0}, Lcom/yourdomain/photoeditor/StickerBSFragment$1;-><init>(Lcom/yourdomain/photoeditor/StickerBSFragment;)V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment;->mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/StickerBSFragment;)Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/StickerBSFragment;

    .line 20
    iget-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment;->mStickerListener:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;

    return-object v0
.end method

.method private convertEmoji(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "emoji"    # Ljava/lang/String;

    .line 126
    const-string v0, ""

    .line 128
    .local v0, "returnedEmoji":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 129
    .local v1, "convertEmojiToInt":I
    invoke-direct {p0, v1}, Lcom/yourdomain/photoeditor/StickerBSFragment;->getEmojiByUnicode(I)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 132
    .end local v1    # "convertEmojiToInt":I
    goto :goto_16

    .line 130
    :catch_13
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v0, ""

    .line 133
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_16
    return-object v0
.end method

.method private getEmojiByUnicode(I)Ljava/lang/String;
    .registers 4
    .param p1, "unicode"    # I

    .line 137
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public setStickerListener(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;)V
    .registers 2
    .param p1, "stickerListener"    # Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;

    .line 29
    iput-object p1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment;->mStickerListener:Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;

    .line 30
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .line 55
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 56
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0031

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 59
    .local v1, "params":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 61
    .local v2, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_30

    instance-of v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v3, :cond_30

    .line 62
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, p0, Lcom/yourdomain/photoeditor/StickerBSFragment;->mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 64
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    const v3, 0x7f0a0125

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .local v3, "rvEmoji":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    .local v4, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    new-instance v5, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;

    invoke-direct {v5, p0}, Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;-><init>(Lcom/yourdomain/photoeditor/StickerBSFragment;)V

    .line 70
    .local v5, "stickerAdapter":Lcom/yourdomain/photoeditor/StickerBSFragment$StickerAdapter;
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    return-void
.end method
