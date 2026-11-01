.class public final Lf/g$d;
.super Ljava/lang/Object;

# interfaces
.implements Lf/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lf/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/g$d;

    invoke-direct {v0}, Lf/g$d;-><init>()V

    sput-object v0, Lf/g$d;->a:Lf/g$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
