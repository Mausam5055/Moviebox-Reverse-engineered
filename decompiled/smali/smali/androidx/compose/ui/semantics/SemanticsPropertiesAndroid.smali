.class public final Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

.field private static final b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid$TestTagsAsResourceId$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid$TestTagsAsResourceId$1;

    const-string v3, "TestTagsAsResourceId"

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method
