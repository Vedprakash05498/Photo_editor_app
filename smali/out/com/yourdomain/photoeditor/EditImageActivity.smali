.class public Lcom/yourdomain/photoeditor/EditImageActivity;
.super Lcom/yourdomain/photoeditor/base/BaseActivity;
.source "EditImageActivity.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;
.implements Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;
.implements Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;
.implements Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;
.implements Lcom/yourdomain/photoeditor/filters/FilterListener;


# static fields
.field private static final CAMERA_REQUEST:I = 0x34

.field public static final EXTRA_IMAGE_PATHS:Ljava/lang/String; = "extra_image_paths"

.field private static final PICK_REQUEST:I = 0x35

.field private static final TAG:Ljava/lang/String;


# instance fields
.field linearLayout:Landroid/widget/LinearLayout;

.field logo_btn:Landroid/widget/ImageView;

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mEditingToolsAdapter:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

.field private mEmojiBSFragment:Lcom/yourdomain/photoeditor/EmojiBSFragment;

.field private mFilterViewAdapter:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

.field private mIsFilterVisible:Z

.field mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

.field private mPhotoEditorView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

.field private mPropertiesBSFragment:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

.field private mRvTools:Landroidx/recyclerview/widget/RecyclerView;

.field private mStickerBSFragment:Lcom/yourdomain/photoeditor/StickerBSFragment;

.field private mTxtCurrentTool:Landroid/widget/TextView;

.field private mWonderFont:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yourdomain/photoeditor/EditImageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/base/BaseActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    invoke-direct {v0, p0}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;)V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mEditingToolsAdapter:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    .line 66
    new-instance v0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    invoke-direct {v0, p0}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;-><init>(Lcom/yourdomain/photoeditor/filters/FilterListener;)V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mFilterViewAdapter:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    .line 68
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/EditImageActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 47
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yourdomain/photoeditor/EditImageActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 47
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->hideLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/yourdomain/photoeditor/EditImageActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lcom/yourdomain/photoeditor/EditImageActivity;->showSnackbar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yourdomain/photoeditor/EditImageActivity;)Lja/burhanrashid52/photoeditor/PhotoEditorView;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 47
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditorView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yourdomain/photoeditor/EditImageActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 47
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->hideLoading()V

    return-void
.end method

.method static synthetic access$500(Lcom/yourdomain/photoeditor/EditImageActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lcom/yourdomain/photoeditor/EditImageActivity;->showSnackbar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/yourdomain/photoeditor/EditImageActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 47
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->saveImage()V

    return-void
.end method

.method private initViews()V
    .registers 7

    .line 138
    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lja/burhanrashid52/photoeditor/PhotoEditorView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditorView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 139
    const v0, 0x7f0a018e

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0a0124

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvTools:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 144
    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .local v0, "imgUndo":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f0a00c3

    invoke-virtual {p0, v1}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 148
    .local v1, "imgRedo":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v2, 0x7f0a00bb

    invoke-virtual {p0, v2}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    .local v2, "imgCamera":Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v3, 0x7f0a00bf

    invoke-virtual {p0, v3}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 154
    .local v3, "imgGallery":Landroid/widget/ImageView;
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v4, 0x7f0a00c4

    invoke-virtual {p0, v4}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 157
    .local v4, "imgSave":Landroid/widget/ImageView;
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v5, 0x7f0a00bc

    invoke-virtual {p0, v5}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 160
    .local v5, "imgClose":Landroid/widget/ImageView;
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method private saveImage()V
    .registers 6

    .line 238
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->requestPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 239
    const-string v0, "Saving..."

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->showLoading(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "file":Ljava/io/File;
    :try_start_38
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 246
    new-instance v1, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    invoke-direct {v1}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;-><init>()V

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->setClearViewsEnabled(Z)Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v2}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->setTransparencyEnabled(Z)Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->build()Lja/burhanrashid52/photoeditor/SaveSettings;

    move-result-object v1

    .line 251
    .local v1, "saveSettings":Lja/burhanrashid52/photoeditor/SaveSettings;
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yourdomain/photoeditor/EditImageActivity$3;

    invoke-direct {v4, p0}, Lcom/yourdomain/photoeditor/EditImageActivity$3;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Lja/burhanrashid52/photoeditor/PhotoEditor;->saveAsFile(Ljava/lang/String;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_5b} :catch_5c

    .line 269
    .end local v1    # "saveSettings":Lja/burhanrashid52/photoeditor/SaveSettings;
    goto :goto_6a

    .line 265
    :catch_5c
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->hideLoading()V

    .line 268
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yourdomain/photoeditor/EditImageActivity;->showSnackbar(Ljava/lang/String;)V

    .line 271
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6a
    :goto_6a
    return-void
.end method

.method private showSaveDialog()V
    .registers 4

    .line 335
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const v1, 0x7f100034

    invoke-virtual {p0, v1}, Lcom/yourdomain/photoeditor/EditImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 337
    new-instance v1, Lcom/yourdomain/photoeditor/EditImageActivity$4;

    invoke-direct {v1, p0}, Lcom/yourdomain/photoeditor/EditImageActivity$4;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    const-string v2, "Save"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 343
    new-instance v1, Lcom/yourdomain/photoeditor/EditImageActivity$5;

    invoke-direct {v1, p0}, Lcom/yourdomain/photoeditor/EditImageActivity$5;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 350
    new-instance v1, Lcom/yourdomain/photoeditor/EditImageActivity$6;

    invoke-direct {v1, p0}, Lcom/yourdomain/photoeditor/EditImageActivity$6;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    const-string v2, "Discard"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 358
    return-void
.end method


# virtual methods
.method public isPermissionGranted(ZLjava/lang/String;)V
    .registers 3
    .param p1, "isGranted"    # Z
    .param p2, "permission"    # Ljava/lang/String;

    .line 329
    if-eqz p1, :cond_5

    .line 330
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->saveImage()V

    .line 332
    :cond_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/yourdomain/photoeditor/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    const/4 v0, -0x1

    if-ne p2, v0, :cond_49

    .line 277
    const/16 v0, 0x34

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x35

    if-eq p1, v0, :cond_f

    goto :goto_49

    .line 285
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearAllViews()V

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 287
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditorView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getSource()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_29} :catch_2a

    .line 291
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_49

    .line 289
    :catch_2a
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2f
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearAllViews()V

    .line 280
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 281
    .local v0, "photo":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditorView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getSource()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    .end local v0    # "photo":Landroid/graphics/Bitmap;
    :cond_49
    :goto_49
    return-void
.end method

.method public onAddViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V
    .registers 6
    .param p1, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;
    .param p2, "numberOfAddedViews"    # I

    .line 182
    sget-object v0, Lcom/yourdomain/photoeditor/EditImageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddViewListener() called with: viewType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], numberOfAddedViews = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 430
    iget-boolean v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mIsFilterVisible:Z

    if-eqz v0, :cond_11

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->showFilter(Z)V

    .line 432
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_20

    .line 433
    :cond_11
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->isCacheEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 434
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->showSaveDialog()V

    goto :goto_20

    .line 436
    :cond_1d
    invoke-super {p0}, Lcom/yourdomain/photoeditor/base/BaseActivity;->onBackPressed()V

    .line 438
    :goto_20
    return-void
.end method

.method public onBrushSizeChanged(I)V
    .registers 4
    .param p1, "brushSize"    # I

    .line 311
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->setBrushSize(F)V

    .line 312
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    sparse-switch v0, :sswitch_data_52

    goto :goto_50

    .line 205
    :sswitch_a
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->undo()Z

    .line 206
    goto :goto_50

    .line 213
    :sswitch_10
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->saveImage()V

    .line 214
    goto :goto_50

    .line 209
    :sswitch_14
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->redo()Z

    .line 210
    goto :goto_50

    .line 227
    :sswitch_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "Select Picture"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x35

    invoke-virtual {p0, v2, v3}, Lcom/yourdomain/photoeditor/EditImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_50

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3a
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->onBackPressed()V

    .line 218
    goto :goto_50

    .line 221
    :sswitch_3e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "cameraIntent":Landroid/content/Intent;
    const/16 v2, 0x34

    invoke-virtual {p0, v0, v2}, Lcom/yourdomain/photoeditor/EditImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 223
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    nop

    .line 234
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    :goto_50
    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        0x7f0a00bb -> :sswitch_3e
        0x7f0a00bc -> :sswitch_3a
        0x7f0a00bf -> :sswitch_1a
        0x7f0a00c3 -> :sswitch_14
        0x7f0a00c4 -> :sswitch_10
        0x7f0a00c8 -> :sswitch_a
    .end sparse-switch
.end method

.method public onColorChanged(I)V
    .registers 4
    .param p1, "colorCode"    # I

    .line 299
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->setBrushColor(I)V

    .line 300
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Lcom/yourdomain/photoeditor/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->makeFullScreen()V

    .line 79
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->initViews()V

    .line 83
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "beyond_wonderland.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mWonderFont:Landroid/graphics/Typeface;

    .line 85
    new-instance v0, Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-direct {v0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;-><init>()V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPropertiesBSFragment:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    .line 86
    new-instance v0, Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-direct {v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;-><init>()V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mEmojiBSFragment:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    .line 87
    new-instance v0, Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-direct {v0}, Lcom/yourdomain/photoeditor/StickerBSFragment;-><init>()V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mStickerBSFragment:Lcom/yourdomain/photoeditor/StickerBSFragment;

    .line 88
    invoke-virtual {v0, p0}, Lcom/yourdomain/photoeditor/StickerBSFragment;->setStickerListener(Lcom/yourdomain/photoeditor/StickerBSFragment$StickerListener;)V

    .line 89
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mEmojiBSFragment:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-virtual {v0, p0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->setEmojiListener(Lcom/yourdomain/photoeditor/EmojiBSFragment$EmojiListener;)V

    .line 90
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPropertiesBSFragment:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-virtual {v0, p0}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->setPropertiesChangeListener(Lcom/yourdomain/photoeditor/PropertiesBSFragment$Properties;)V

    .line 92
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 93
    .local v0, "llmTools":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvTools:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvTools:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mEditingToolsAdapter:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v1, v2

    .line 97
    .local v1, "llmFilters":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mFilterViewAdapter:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    const v2, 0x7f0a00d7

    invoke-virtual {p0, v2}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 101
    const v2, 0x7f0a00da

    invoke-virtual {p0, v2}, Lcom/yourdomain/photoeditor/EditImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->logo_btn:Landroid/widget/ImageView;

    .line 103
    new-instance v3, Lcom/yourdomain/photoeditor/EditImageActivity$1;

    invoke-direct {v3, p0}, Lcom/yourdomain/photoeditor/EditImageActivity$1;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v2, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditorView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-direct {v2, p0, v3}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;-><init>(Landroid/content/Context;Lja/burhanrashid52/photoeditor/PhotoEditorView;)V

    .line 119
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->setPinchTextScalable(Z)Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->build()Lja/burhanrashid52/photoeditor/PhotoEditor;

    move-result-object v2

    iput-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 124
    invoke-virtual {v2, p0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->setOnPhotoEditorListener(Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;)V

    .line 128
    return-void
.end method

.method public onEditTextChangeListener(Landroid/view/View;Ljava/lang/String;I)V
    .registers 6
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "colorCode"    # I

    .line 166
    nop

    .line 167
    invoke-static {p0, p2, p3}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->show(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    move-result-object v0

    .line 168
    .local v0, "textEditorDialogFragment":Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    new-instance v1, Lcom/yourdomain/photoeditor/EditImageActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/yourdomain/photoeditor/EditImageActivity$2;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->setOnTextEditorListener(Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;)V

    .line 178
    return-void
.end method

.method public onEmojiClick(Ljava/lang/String;)V
    .registers 4
    .param p1, "emojiUnicode"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addEmoji(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 319
    return-void
.end method

.method public onFilterSelected(Lja/burhanrashid52/photoeditor/PhotoFilter;)V
    .registers 3
    .param p1, "photoFilter"    # Lja/burhanrashid52/photoeditor/PhotoFilter;

    .line 362
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V

    .line 363
    return-void
.end method

.method public onOpacityChanged(I)V
    .registers 4
    .param p1, "opacity"    # I

    .line 305
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->setOpacity(I)V

    .line 306
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 307
    return-void
.end method

.method public onRemoveViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V
    .registers 6
    .param p1, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;
    .param p2, "numberOfAddedViews"    # I

    .line 187
    sget-object v0, Lcom/yourdomain/photoeditor/EditImageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoveViewListener() called with: viewType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], numberOfAddedViews = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public onStartViewChangeListener(Lja/burhanrashid52/photoeditor/ViewType;)V
    .registers 5
    .param p1, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;

    .line 192
    sget-object v0, Lcom/yourdomain/photoeditor/EditImageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartViewChangeListener() called with: viewType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onStickerClick(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 323
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addImage(Landroid/graphics/Bitmap;)V

    .line 324
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 325
    return-void
.end method

.method public onStopViewChangeListener(Lja/burhanrashid52/photoeditor/ViewType;)V
    .registers 5
    .param p1, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;

    .line 197
    sget-object v0, Lcom/yourdomain/photoeditor/EditImageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopViewChangeListener() called with: viewType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public onToolSelected(Lcom/yourdomain/photoeditor/tools/ToolType;)V
    .registers 5
    .param p1, "toolType"    # Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 367
    sget-object v0, Lcom/yourdomain/photoeditor/EditImageActivity$8;->$SwitchMap$com$yourdomain$photoeditor$tools$ToolType:[I

    invoke-virtual {p1}, Lcom/yourdomain/photoeditor/tools/ToolType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_72

    goto :goto_71

    .line 398
    :pswitch_d
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mStickerBSFragment:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mStickerBSFragment:Lcom/yourdomain/photoeditor/StickerBSFragment;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/StickerBSFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yourdomain/photoeditor/StickerBSFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_71

    .line 395
    :pswitch_1d
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mEmojiBSFragment:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mEmojiBSFragment:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 396
    goto :goto_71

    .line 391
    :pswitch_2d
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v2, 0x7f10002f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/yourdomain/photoeditor/EditImageActivity;->showFilter(Z)V

    .line 393
    goto :goto_71

    .line 387
    :pswitch_39
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushEraser()V

    .line 388
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 389
    goto :goto_71

    .line 374
    :pswitch_47
    invoke-static {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->show(Landroidx/appcompat/app/AppCompatActivity;)Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    move-result-object v0

    .line 375
    .local v0, "textEditorDialogFragment":Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    new-instance v1, Lcom/yourdomain/photoeditor/EditImageActivity$7;

    invoke-direct {v1, p0}, Lcom/yourdomain/photoeditor/EditImageActivity$7;-><init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->setOnTextEditorListener(Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;)V

    .line 385
    goto :goto_71

    .line 369
    .end local v0    # "textEditorDialogFragment":Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    :pswitch_54
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->setBrushDrawingMode(Z)V

    .line 370
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mTxtCurrentTool:Landroid/widget/TextView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 371
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPropertiesBSFragment:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/EditImageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mPropertiesBSFragment:Lcom/yourdomain/photoeditor/PropertiesBSFragment;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yourdomain/photoeditor/PropertiesBSFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 372
    nop

    .line 401
    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_54
        :pswitch_47
        :pswitch_39
        :pswitch_2d
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method

.method showFilter(Z)V
    .registers 7
    .param p1, "isVisible"    # Z

    .line 405
    iput-boolean p1, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mIsFilterVisible:Z

    .line 406
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 408
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eqz p1, :cond_30

    .line 409
    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v4, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 410
    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v4, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 412
    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_46

    .line 415
    :cond_30
    iget-object v3, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v4, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 417
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRvFilters:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 420
    :goto_46
    new-instance v0, Landroidx/transition/ChangeBounds;

    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 421
    .local v0, "changeBounds":Landroidx/transition/ChangeBounds;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroidx/transition/ChangeBounds;->setDuration(J)Landroidx/transition/Transition;

    .line 422
    new-instance v1, Landroid/view/animation/AnticipateOvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 423
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 425
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 426
    return-void
.end method
