.class public Lcom/yourdomain/photoeditor/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field public static final READ_WRITE_STORAGE:I = 0x34


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected hideLoading()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/yourdomain/photoeditor/base/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    :cond_7
    return-void
.end method

.method public isPermissionGranted(ZLjava/lang/String;)V
    .registers 3
    .param p1, "isGranted"    # Z
    .param p2, "permission"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public makeFullScreen()V
    .registers 3

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/base/BaseActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 47
    const/16 v0, 0x34

    if-eq p1, v0, :cond_5

    goto :goto_12

    .line 49
    :cond_5
    const/4 v0, 0x0

    aget v1, p3, v0

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    aget-object v0, p2, v0

    invoke-virtual {p0, v1, v0}, Lcom/yourdomain/photoeditor/base/BaseActivity;->isPermissionGranted(ZLjava/lang/String;)V

    .line 52
    :goto_12
    return-void
.end method

.method public requestPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 26
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 27
    .local v0, "isGranted":Z
    :goto_b
    if-nez v0, :cond_16

    .line 28
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const/16 v2, 0x34

    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 33
    :cond_16
    return v0
.end method

.method protected showLoading(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/base/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 56
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/yourdomain/photoeditor/base/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/yourdomain/photoeditor/base/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 59
    iget-object v0, p0, Lcom/yourdomain/photoeditor/base/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 60
    return-void
.end method

.method protected showSnackbar(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 69
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/yourdomain/photoeditor/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 71
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1a

    .line 73
    :cond_12
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 75
    :goto_1a
    return-void
.end method
