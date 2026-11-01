.class public final Lq1/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lp1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lq1/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/g$a;

    invoke-direct {v0}, Lq1/g$a;-><init>()V

    sput-object v0, Lq1/g$a;->a:Lq1/g$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
