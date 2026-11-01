.class public final synthetic Lcom/transsnet/downloader/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/util/c;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/transsnet/downloader/util/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/util/c;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/transsnet/downloader/util/c;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/util/d;->c(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method
