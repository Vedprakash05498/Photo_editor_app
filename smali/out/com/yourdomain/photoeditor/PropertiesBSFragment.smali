.class public Lcom/yourdomain/photoeditor/PropertiesBSFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "PropertiesBSFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;
    }
.end annotation


# instance fields
.field private mProperties:Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/PropertiesBSFragment;)Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    .line 14
    iget-object v0, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->mProperties:Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    const v0, 0x7f0d0030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .line 72
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f0a012a

    if-eq v0, v1, :cond_17

    const v1, 0x7f0a012c

    if-eq v0, v1, :cond_f

    goto :goto_1e

    .line 79
    :cond_f
    iget-object v0, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->mProperties:Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    if-eqz v0, :cond_1e

    .line 80
    invoke-interface {v0, p2}, Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;->onBrushSizeChanged(I)V

    goto :goto_1e

    .line 74
    :cond_17
    iget-object v0, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->mProperties:Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    if-eqz v0, :cond_1e

    .line 75
    invoke-interface {v0, p2}, Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;->onOpacityChanged(I)V

    .line 84
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 89
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .local v0, "rvColor":Landroidx/recyclerview/widget/RecyclerView;
    const v1, 0x7f0a012a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 45
    .local v1, "sbOpacity":Landroid/widget/SeekBar;
    const v2, 0x7f0a012c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 47
    .local v2, "sbBrushSize":Landroid/widget/SeekBar;
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 51
    .local v3, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 53
    new-instance v4, Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v4, "colorPickerAdapter":Lcom/yourdomain/photoeditor/ColorPickerAdapter;
    new-instance v5, Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;

    invoke-direct {v5, p0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment$1;-><init>(Lcom/yourdomain/photoeditor/PropertiesBSFragment;)V

    invoke-virtual {v4, v5}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->setOnColorPickerClickListener(Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;)V

    .line 63
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    return-void
.end method

.method public setPropertiesChangeListener(Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;)V
    .registers 2
    .param p1, "properties"    # Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    .line 67
    iput-object p1, p0, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->mProperties:Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;

    .line 68
    return-void
.end method
