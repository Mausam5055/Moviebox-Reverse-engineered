.class public final Lf/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lf/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lf/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/g$c;

    invoke-direct {v0}, Lf/g$c;-><init>()V

    sput-object v0, Lf/g$c;->a:Lf/g$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
