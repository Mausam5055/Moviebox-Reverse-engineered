.class abstract La9/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La9/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:La9/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La9/j;

    invoke-direct {v0}, La9/j;-><init>()V

    sput-object v0, La9/j$a;->a:La9/j;

    return-void
.end method

.method static synthetic a()La9/j;
    .locals 1

    sget-object v0, La9/j$a;->a:La9/j;

    return-object v0
.end method
