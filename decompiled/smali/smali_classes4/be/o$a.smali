.class public abstract Lbe/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbe/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbe/o;

    invoke-direct {v0}, Lbe/o;-><init>()V

    sput-object v0, Lbe/o$a;->a:Lbe/o;

    return-void
.end method

.method public static synthetic a()Lbe/o;
    .locals 1

    sget-object v0, Lbe/o$a;->a:Lbe/o;

    return-object v0
.end method
