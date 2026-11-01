.class public final synthetic Lcom/transsnet/downloader/util/z;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/util/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsnet/downloader/util/z;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsnet/downloader/util/z;->c:Z

    iput p4, p0, Lcom/transsnet/downloader/util/z;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/util/z;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/downloader/util/z;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsnet/downloader/util/z;->c:Z

    iget v3, p0, Lcom/transsnet/downloader/util/z;->d:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->d(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
