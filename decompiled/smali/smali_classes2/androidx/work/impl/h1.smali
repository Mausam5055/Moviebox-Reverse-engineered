.class public final Landroidx/work/impl/h1;
.super Ly3/c;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    iput-object p1, p0, Landroidx/work/impl/h1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/h1;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/utils/z;->c(Landroid/content/Context;La4/d;)V

    iget-object v0, p0, Landroidx/work/impl/h1;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/utils/n;->c(Landroid/content/Context;La4/d;)V

    return-void
.end method
