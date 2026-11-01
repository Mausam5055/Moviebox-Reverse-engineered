.class public final Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->H0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method

.method public r(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->H0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->w(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->y0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->y0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;->d:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->S0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    return-void
.end method
