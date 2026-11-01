.class public final synthetic Lcom/transsion/commercialization/task/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/e;->a:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/e;->a:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
