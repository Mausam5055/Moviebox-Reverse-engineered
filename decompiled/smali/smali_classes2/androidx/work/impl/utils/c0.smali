.class final Landroidx/work/impl/utils/c0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/work/impl/utils/c0;

.field private static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/c0;

    invoke-direct {v0}, Landroidx/work/impl/utils/c0;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/c0;->a:Landroidx/work/impl/utils/c0;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/c0;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Landroidx/work/impl/utils/c0;->b:Ljava/util/WeakHashMap;

    return-object v0
.end method
