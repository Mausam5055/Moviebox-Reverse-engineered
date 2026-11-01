.class public final synthetic Lcom/transsnet/downloader/util/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsnet/downloader/util/x;->a:Z

    iput p2, p0, Lcom/transsnet/downloader/util/x;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/transsnet/downloader/util/x;->a:Z

    iget v1, p0, Lcom/transsnet/downloader/util/x;->b:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->c(ZIZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
