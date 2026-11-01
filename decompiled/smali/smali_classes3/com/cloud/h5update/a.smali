.class public final Lcom/cloud/h5update/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/h5update/a;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/h5update/a;

    invoke-direct {v0}, Lcom/cloud/h5update/a;-><init>()V

    sput-object v0, Lcom/cloud/h5update/a;->a:Lcom/cloud/h5update/a;

    const/4 v0, 0x1

    sput v0, Lcom/cloud/h5update/a;->b:I

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

    sget v0, Lcom/cloud/h5update/a;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    sput p1, Lcom/cloud/h5update/a;->b:I

    return-void
.end method
