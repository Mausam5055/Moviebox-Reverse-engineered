.class abstract La9/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:La9/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La9/g;

    invoke-direct {v0}, La9/g;-><init>()V

    sput-object v0, La9/g$a;->a:La9/g;

    return-void
.end method

.method static synthetic a()La9/g;
    .locals 1

    sget-object v0, La9/g$a;->a:La9/g;

    return-object v0
.end method
