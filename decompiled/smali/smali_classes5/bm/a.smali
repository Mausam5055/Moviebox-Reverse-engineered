.class public Lbm/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lbm/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lbm/b;->b()Lbm/b;

    move-result-object v0

    sput-object v0, Lbm/a;->a:Lbm/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
