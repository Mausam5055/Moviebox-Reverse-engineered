.class public abstract Lbe/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lbe/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbe/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe/g;-><init>(Lbe/g$a;)V

    sput-object v0, Lbe/g$b;->a:Lbe/g;

    return-void
.end method

.method public static synthetic a()Lbe/g;
    .locals 1

    sget-object v0, Lbe/g$b;->a:Lbe/g;

    return-object v0
.end method
