.class public abstract Lbe/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lbe/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbe/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe/e;-><init>(Lbe/e$a;)V

    sput-object v0, Lbe/e$b;->a:Lbe/e;

    return-void
.end method

.method public static synthetic a()Lbe/e;
    .locals 1

    sget-object v0, Lbe/e$b;->a:Lbe/e;

    return-object v0
.end method
