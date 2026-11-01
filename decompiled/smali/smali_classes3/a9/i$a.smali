.class abstract La9/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:La9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La9/i;

    invoke-direct {v0}, La9/i;-><init>()V

    sput-object v0, La9/i$a;->a:La9/i;

    return-void
.end method

.method static synthetic a()La9/i;
    .locals 1

    sget-object v0, La9/i$a;->a:La9/i;

    return-object v0
.end method
