.class public final synthetic Lcom/transsnet/downloader/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/util/b;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/transsnet/downloader/util/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsnet/downloader/util/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/util/b;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/util/b;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/transsnet/downloader/util/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsnet/downloader/util/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/downloader/util/b;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3}, Lcom/transsnet/downloader/util/d;->b(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
