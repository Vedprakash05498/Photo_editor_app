.class Lcom/yourdomain/photoeditor/StickerBSFragment$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "StickerBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/StickerBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/StickerBSFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/StickerBSFragment;

    .line 36
    iput-object p1, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 48
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 40
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/yourdomain/photoeditor/StickerBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->dismiss()V

    .line 44
    :cond_8
    return-void
.end method
