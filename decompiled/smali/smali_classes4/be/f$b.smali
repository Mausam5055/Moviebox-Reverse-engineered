.class public abstract Lbe/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lbe/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbe/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe/f;-><init>(Lbe/f$a;)V

    sput-object v0, Lbe/f$b;->a:Lbe/f;

    return-void
.end method

.method public static synthetic a()Lbe/f;
    .locals 1

    sget-object v0, Lbe/f$b;->a:Lbe/f;

    return-object v0
.end method
