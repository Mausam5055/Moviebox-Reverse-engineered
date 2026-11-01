.class public final synthetic Lcom/transsnet/downloader/util/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsnet/downloader/util/y;->a:Z

    iput-object p2, p0, Lcom/transsnet/downloader/util/y;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsnet/downloader/util/y;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/util/y;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/transsnet/downloader/util/y;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/transsnet/downloader/util/y;->f:Z

    iput p7, p0, Lcom/transsnet/downloader/util/y;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Lcom/transsnet/downloader/util/y;->a:Z

    iget-object v1, p0, Lcom/transsnet/downloader/util/y;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsnet/downloader/util/y;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/downloader/util/y;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/transsnet/downloader/util/y;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/transsnet/downloader/util/y;->f:Z

    iget v6, p0, Lcom/transsnet/downloader/util/y;->g:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
