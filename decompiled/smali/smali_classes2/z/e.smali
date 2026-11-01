.class public abstract Lz/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lo0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Lo0/g;->a(FF)Lo0/e;

    move-result-object v0

    sput-object v0, Lz/e;->a:Lo0/e;

    return-void
.end method

.method public static final a()Lo0/e;
    .locals 1

    sget-object v0, Lz/e;->a:Lo0/e;

    return-object v0
.end method
