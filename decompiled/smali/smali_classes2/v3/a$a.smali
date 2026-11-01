.class final Lv3/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Lv3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/a$a;

    invoke-direct {v0}, Lv3/a$a;-><init>()V

    sput-object v0, Lv3/a$a;->a:Lv3/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0xf4240

    invoke-static {v0}, Lf/f;->a(I)I

    move-result v0

    return v0
.end method
