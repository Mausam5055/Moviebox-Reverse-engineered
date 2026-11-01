.class public Ly4/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4/h$c;
    }
.end annotation


# static fields
.field private static A:Z

.field private static B:Z

.field private static C:Z

.field private static D:Z

.field private static E:Lcom/alibaba/fastjson/util/e;

.field public static final t:[Ljava/lang/String;

.field public static final u:[Ljava/lang/String;

.field private static final v:[Ljava/lang/String;

.field public static final w:Z

.field public static final x:Z

.field private static final y:[J

.field public static z:Ly4/h;


# instance fields
.field private final a:Lcom/alibaba/fastjson/util/g;

.field private final b:Lcom/alibaba/fastjson/util/g;

.field private final c:Ljava/util/concurrent/ConcurrentMap;

.field private d:Z

.field public final e:Ly4/i;

.field public f:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field protected g:Ljava/lang/ClassLoader;

.field protected h:Lz4/a;

.field private i:Z

.field private j:[J

.field private k:[J

.field private l:[J

.field public final m:Z

.field private n:Z

.field public o:Z

.field private p:Ljava/util/List;

.field private volatile q:Ljava/util/List;

.field private r:Z

.field private final s:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "fastjson.parser.deny.internal"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly4/h;->B(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly4/h;->t:[Ljava/lang/String;

    const-string v0, "fastjson.parser.deny"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly4/h;->B(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly4/h;->u:[Ljava/lang/String;

    const-string v0, "fastjson.parser.autoTypeSupport"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ly4/h;->w:Z

    const-string v0, "fastjson.parser.safeMode"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ly4/h;->x:Z

    const-string v0, "fastjson.parser.autoTypeAccept"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly4/h;->B(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    sput-object v0, Ly4/h;->v:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Ly4/h;->y:[J

    new-instance v0, Ly4/h;

    invoke-direct {v0}, Ly4/h;-><init>()V

    sput-object v0, Ly4/h;->z:Ly4/h;

    sput-boolean v1, Ly4/h;->A:Z

    sput-boolean v1, Ly4/h;->B:Z

    sput-boolean v1, Ly4/h;->C:Z

    sput-boolean v1, Ly4/h;->D:Z

    new-instance v0, Ly4/h$b;

    invoke-direct {v0}, Ly4/h$b;-><init>()V

    sput-object v0, Ly4/h;->E:Lcom/alibaba/fastjson/util/e;

    return-void

    :array_0
    .array-data 8
        -0x60d1df049fb65c8fL
        -0x575556d6bb90031cL    # -8.660931078614971E-113
        0xd45d6f8c9017faL
        0x64dc636f343516dcL    # 7.18982986180002E177
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly4/h;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Lz4/a;Ljava/lang/ClassLoader;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/fastjson/util/g;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/g;-><init>()V

    iput-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    new-instance v0, Lcom/alibaba/fastjson/util/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    iput-object v0, p0, Ly4/h;->b:Lcom/alibaba/fastjson/util/g;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Ly4/h;->c:Ljava/util/concurrent/ConcurrentMap;

    sget-boolean v0, Lcom/alibaba/fastjson/util/b;->b:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Ly4/h;->d:Z

    new-instance v0, Ly4/i;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ly4/i;-><init>(I)V

    iput-object v0, p0, Ly4/h;->e:Ly4/i;

    sget-boolean v0, Ly4/h;->w:Z

    iput-boolean v0, p0, Ly4/h;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly4/h;->n:Z

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    iput-boolean v1, p0, Ly4/h;->o:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ly4/h;->p:Ljava/util/List;

    sget-boolean v1, Ly4/h;->x:Z

    iput-boolean v1, p0, Ly4/h;->r:Z

    const/16 v1, 0xa9

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Ly4/h;->k:[J

    sget-object v1, Ly4/h;->v:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [J

    move v2, v0

    :goto_0
    sget-object v4, Ly4/h;->v:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    iput-object v1, p0, Ly4/h;->l:[J

    new-instance v1, Ly4/h$a;

    invoke-direct {v1, p0}, Ly4/h$a;-><init>(Ly4/h;)V

    iput-object v1, p0, Ly4/h;->s:Ljava/util/concurrent/Callable;

    iput-boolean p3, p0, Ly4/h;->m:Z

    if-nez p1, :cond_2

    sget-boolean p3, Lcom/alibaba/fastjson/util/b;->b:Z

    if-nez p3, :cond_2

    if-nez p2, :cond_1

    :try_start_0
    new-instance p2, Lz4/a;

    new-instance p3, Lcom/alibaba/fastjson/util/a;

    invoke-direct {p3}, Lcom/alibaba/fastjson/util/a;-><init>()V

    invoke-direct {p2, p3}, Lz4/a;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, p2

    goto :goto_1

    :cond_1
    new-instance p3, Lz4/a;

    invoke-direct {p3, p2}, Lz4/a;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p3

    :catch_0
    :cond_2
    :goto_1
    iput-object p1, p0, Ly4/h;->h:Lz4/a;

    if-nez p1, :cond_3

    iput-boolean v0, p0, Ly4/h;->d:Z

    :cond_3
    invoke-direct {p0}, Ly4/h;->u()V

    sget-object p1, Ly4/h;->u:[Ljava/lang/String;

    invoke-direct {p0, p1}, Ly4/h;->f([Ljava/lang/String;)V

    sget-object p1, Ly4/h;->t:[Ljava/lang/String;

    invoke-direct {p0, p1}, Ly4/h;->g([Ljava/lang/String;)V

    sget-object p1, Ly4/h;->v:[Ljava/lang/String;

    invoke-direct {p0, p1}, Ly4/h;->e([Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 8
        -0x7f2f38f433d015feL    # -9.556794763479643E-305
        -0x797c7af6a5dd8da1L    # -2.752875440315231E-277
        -0x7903d40641508511L    # -5.085553800937495E-275
        -0x780ad5e4f815cc5aL
        -0x778d0d602f4f4859L    # -5.73854165649321E-268
        -0x7455117064088059L    # -1.836708762919172E-252
        -0x71522bf34d56bbbdL
        -0x708a0605f20fc080L    # -3.455901468587826E-234
        -0x6e8d5ac0ea86cf51L
        -0x6dedd28ef1c9b048L    # -1.257180119856368E-221
        -0x6be79918c4100b37L    # -7.248495544345653E-212
        -0x6bcfa3d9a7f08c3bL    # -1.943861383644949E-211
        -0x6bc886d7ce2082c1L
        -0x5edc59d06ce874e0L    # -4.802155510082355E-149
        -0x57a77d31efbb3bb0L
        -0x55c250024ef3b6c9L
        -0x555619483e1e3959L
        -0x5555f7d9b785c8c9L
        -0x547da9d0ac191b71L    # -4.191714158844199E-99
        -0x539d9d0ad36755c7L    # -6.886391444241167E-95
        -0x526c85bb67ce1760L    # -3.824696155682281E-89
        -0x51af25e0529f5f6aL    # -1.3554199460470375E-85
        -0x500900dcc771dda6L    # -1.2412673941092185E-77
        -0x5000b36a4665ccb3L    # -1.6894051133204177E-77
        -0x4bf0cbe38b9136b1L    # -6.213767217225293E-58
        -0x4817128a80a2ec5eL    # -2.2892361373052172E-39
        -0x467494ac696cd017L    # -1.6898413909066546E-31
        -0x4322623ed8990f32L    # -1.644030941651994E-15
        -0x431f211cb18d9b67L    # -1.8730190643927076E-15
        -0x41b0ec1695986930L    # -1.4471719223103779E-8
        -0x41458d04e3345bdaL    # -1.5764918430089148E-6
        -0x3ff41e21450d7f75L    # -3.485288105512216
        -0x3ef795051cd19da8L    # -200031.3609283145
        -0x3d99b2f6a71301b4L    # -7.662539098639468E11
        -0x3be00836378383fbL    # -1.4742602222991634E20
        -0x399b4c9c4535faf6L    # -1.3120653062289765E31
        -0x38a661401c18dbfaL    # -5.3210898116926836E35
        -0x372b61a9fe199e57L    # -7.184498624325357E42
        -0x370fb4c5d76f66cbL    # -2.271032093241071E43
        -0x369c96af7d028d72L    # -3.463106763999075E45
        -0x340d631b7bdddcdbL    # -7.302176725335867E57
        -0x2e10320b4cce92ccL    # -4.9428513655242083E86
        -0x2ab46e33884dc613L    # -7.718587662525667E102
        -0x2a6116e0f4f615ffL    # -2.769276834562512E104
        -0x299097546d18010bL    # -2.305158249887012E108
        -0x2735c2a6a167d454L    # -5.293540616952125E119
        -0x232729ea59bb61c2L    # -1.8485208306343955E139
        -0x21dc5f7f6574642aL    # -3.063522061072579E145
        -0x2103df70dc82befcL    # -3.5965336067206575E149
        -0x20d2200cef324c8bL    # -3.0559968239287952E150
        -0x1f651b9fb7bda7d1L    # -2.3076098125244163E157
        -0x1e6e67fb2a40b971L    # -9.894137060283861E161
        -0x1d14c5381a93b982L    # -3.211360471030518E168
        -0x19fc295ae05296d5L    # -2.6342395696172524E183
        -0x18fb02e6fad4d5ccL    # -1.826468061592473E188
        -0x16e7b41aa4e269d6L    # -1.816185970555075E198
        -0x160df452da09f7f9L    # -2.2100835374064227E202
        -0x12ec9ac34ba3b413L    # -2.674464980159689E217
        -0xd67c2f662d64b89L    # -1.0343819992267985E244
        -0xc8fd5b5ab6f4718L
        -0xb8b1bbae70d98caL    # -9.573036758577548E252
        -0xb26c0b04c1c266fL    # -7.404086096916242E254
        -0xa28823071b28e1aL    # -4.514878552434115E259
        -0x93fcbf18c5c9597L
        -0x816918b205a7244L
        -0x388c51df37d896fL
        -0x30c1879bb467428L    # -7.945197787260532E293
        -0x2a4039effa928e0L    # -7.14947811210233E295
        -0x5ea40fde0e1c84L
        -0x22e57f0e12cbfbL
        0x10e067cd55c5e5L
        0x761619136cc13eL
        0x22baa234c5bfb8aL
        0x3085068cb7201b8L
        0x45b11bc78a3aba3L
        0x55cfca0f2281c07L
        0xa555c74fe3a5155L
        0xb6e292fa5955adeL
        0xbef8514d0b79293L
        0xee6511b66fd5ef0L    # 6.854342740564376E-237
        0x100150a253996624L    # 1.394104277479804E-231
        0x10b2bdca849d9b3eL    # 3.09032861507223E-228
        0x10dbc48446e0dae5L
        0x119b5b1f10210afcL
        0x144277b467723158L    # 4.388573993986807E-211
        0x14db2e6fead04af0L    # 3.307156557815155E-208
        0x154b6cb22d294cfaL    # 4.271035506616844E-206
        0x17924cca5227622aL
        0x193b2697eaaed41aL    # 3.9000001662652114E-187
        0x1cd6f11c6a358bb7L    # 9.498405308272427E-170
        0x1e0a8c3358ff3daeL    # 5.762601583556236E-164
        0x24652ce717e713bbL
        0x24d2f6048fef4e49L
        0x24ec99d5e7dc5571L    # 8.058828264835688E-131
        0x25e962f1c28f71a2L
        0x275d0732b877af29L
        0x28ac82e44e933606L
        0x2a71ce2cc40a710cL    # 3.105364083941061E-104
        0x2ad1ce3a112f015dL
        0x2adfefbbfe29d931L
        0x2b3a37467a344cdfL
        0x2b6dd8b3229d6837L    # 1.7057077092413725E-99
        0x2d308dbbc851b0d8L    # 5.078962391870398E-91
        0x2fe950d3ea52ae0dL    # 6.832216944281275E-78
        0x313bb4abd8d4554cL    # 1.56808971921097E-71
        0x327c8ed7c8706905L    # 1.6948389662237084E-65
        0x332f0b5369a18310L
        0x339a3e0b6beebee9L    # 4.0826654570968825E-60
        0x33c64b921f523f2fL    # 2.77486720533494E-59
        0x33e7f3e02571b153L    # 1.1924611050770566E-58
        0x34a81ee78429fdf1L    # 4.918595094295287E-55
        0x37317698dcfce894L    # 7.830801102106149E-43
        0x378307cb0111e878L    # 2.730734411398275E-41
        0x3826f4b2380c8b9bL    # 3.373058177088523E-38
        0x398f942e01920cf0L    # 1.9461954727645544E-31
        0x3a31412dbb05c7ffL    # 2.1778372103247874E-28
        0x3a7ee0635eb2bc33L    # 6.235462802057997E-27
        0x3adba40367f73264L    # 3.5724737671988184E-25
        0x3b0b51ecbf6db221L    # 2.8248237289442712E-24
        0x3bf14094a524f0e2L    # 5.845295813183875E-20
        0x42d11a560fc9fba9L    # 7.521924278884664E13
        0x43320dc9d2ae0892L    # 5.08171005500021E15
        0x440e89208f445fb9L    # 7.041042216469549E19
        0x46c808a4b5841f57L    # 9.749252615377375E32
        0x470fd3a18bb39414L    # 2.065669875132854E34
        0x49312bdafb0077d9L    # 3.829330118647328E44
        0x4a3797b30328202cL    # 3.448058737338662E49
        0x4ba3e254e758d70dL    # 2.4377845509161763E56
        0x4bf881e49d37f530L    # 9.614713083096315E57
        0x4cf54eec05e3e818L    # 5.478576021141778E62
        0x4da972745feb30c1L    # 1.339945589251118E66
        0x4ef08c90ff16c675L    # 1.8274816638330285E72
        0x4fd10ddc6d13821fL    # 3.085523505057036E76
        0x521b4f573376df4aL    # 3.3954649887443486E87
        0x527db6b46ce3bcbcL    # 2.3643694017797754E89
        0x535e552d6f9700c1L    # 3.954486474370437E93
        0x54855e265fe1dad5L    # 1.4605211590140444E99
        0x5728504a6d454ffcL    # 7.309005913296069E111
        0x599b5c1213a099acL    # 4.521565120980506E123
        0x5a5bd85c072e5efeL
        0x5ab0cb3071ab40d1L    # 7.275532043244496E128
        0x5b6149820275ea42L
        0x5d74d3e5b9370476L    # 1.5873759122766088E142
        0x5d92e6ddde40ed84L    # 5.762376793011253E142
        0x5e61093ef8cdddbbL    # 4.2545979149900575E146
        0x5f215622fb630753L    # 1.773407570959078E150
        0x61c5bdd721385107L    # 9.781342160839794E162
        0x62db241274397c34L
        0x636ecca2a131b235L    # 9.29884914075952E170
        0x63a220e60a17c7b9L    # 8.757288450874107E171
        0x647ab0224e149ebeL    # 1.0561215288164044E176
        0x65f81b84c1d920cdL    # 1.6005507777082922E183
        0x665c53c311193973L    # 1.2036519694555594E185
        0x6749835432e0f0d2L
        0x69b6e0175084b377L    # 1.750995289311963E201
        0x6a47501ebb2afdb2L    # 9.136601149026956E203
        0x6fcabf6fa54cafffL    # 3.244253068846464E230
        0x6fe92d83fc0a4628L    # 1.2215307041274365E231
        0x746bd4a53ec195fbL    # 6.376313675246868E252
        0x74b50bb9260e31ffL    # 1.5429848812177576E254
        0x75cc60f5871d0fd3L    # 2.7270901325332595E259
        0x767a586a5107feefL    # 5.184902282980218E262
        0x78e5935826671397L    # 2.3343620850209894E274
        0x793addded7a967f5L    # 9.301865880350898E275
        0x7aa7ee3627a19cf3L    # 6.950210684357695E282
        0x7afa070241b8cc4bL    # 2.4189469652688762E284
        0x7ed9311d28bf1a65L    # 1.0797314149657436E303
        0x7ed9481d28bf417aL    # 1.0835821490243428E303
        0x7ee6c477da20bbe3L    # 1.951641816604592E303
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Ly4/h;-><init>(Lz4/a;Ljava/lang/ClassLoader;Z)V

    return-void
.end method

.method private static B(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Ly4/h;)Lcom/alibaba/fastjson/util/g;
    .locals 0

    iget-object p0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    return-object p0
.end method

.method private e([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ly4/h;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ly4/h;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ly4/h;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static q(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-class v3, Lx4/a;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lx4/a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 6

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_1
    if-nez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    if-gt v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v5, v0, v1

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    aput-char v5, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v2, v4, :cond_4

    if-gt v2, v3, :cond_4

    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_4
    return-object v0
.end method

.method public static t()Ly4/h;
    .locals 1

    sget-object v0, Ly4/h;->z:Ly4/h;

    return-object v0
.end method

.method private u()V
    .locals 7

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v1, La5/w0;->b:La5/w0;

    const-class v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v2, La5/v;->b:La5/v;

    const-class v3, Ljava/util/Calendar;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    sget-object v3, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v2, La5/z;->a:La5/z;

    const-class v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/Map;

    sget-object v4, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/HashMap;

    sget-object v4, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/LinkedHashMap;

    sget-object v4, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/TreeMap;

    sget-object v4, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/ConcurrentMap;

    sget-object v4, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lz4/z1;->a:Lz4/z1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v2, Lz4/p;->a:Lz4/p;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/String;

    sget-object v4, La5/k1;->a:La5/k1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/StringBuffer;

    sget-object v4, La5/k1;->a:La5/k1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/StringBuilder;

    sget-object v4, La5/k1;->a:La5/k1;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v4, La5/x;->a:La5/x;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v4, Lz4/a2;->a:Lz4/a2;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, La5/j0;->a:La5/j0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Integer;

    sget-object v5, La5/j0;->a:La5/j0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v5, La5/u0;->a:La5/u0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Long;

    sget-object v5, La5/u0;->a:La5/u0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/math/BigInteger;

    sget-object v5, La5/s;->c:La5/s;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, La5/r;->c:La5/r;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, La5/h0;->b:La5/h0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Float;

    sget-object v5, La5/h0;->b:La5/h0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, La5/t;->a:La5/t;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    new-instance v3, La5/w;

    invoke-direct {v3}, La5/w;-><init>()V

    const-class v6, [C

    invoke-virtual {v0, v6, v3}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v5, La5/j0;->a:La5/j0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, La5/u0;->a:La5/u0;

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v3, La5/d1;->a:La5/d1;

    const-class v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v5, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/UUID;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/TimeZone;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/Locale;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/Currency;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/Inet4Address;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/Inet6Address;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/io/File;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/URI;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/URL;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Lcom/alibaba/fastjson/JSONPath;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    sget-object v1, La5/m;->a:La5/m;

    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v3, Lz4/j3;->a:Lz4/j3;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    const-class v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    new-instance v1, Lz4/n;

    invoke-direct {v1}, Lz4/n;-><init>()V

    const-class v2, Lcom/alibaba/fastjson/c;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ly4/h;->s:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/i;->c(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public static w(Ljava/lang/Class;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_2

    sget-object v0, Ly4/h;->E:Lcom/alibaba/fastjson/util/e;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/i;->b(Lcom/alibaba/fastjson/util/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Boolean;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_3
    return v1
.end method

.method public static y(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ly4/h;->y(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Ly4/h;->d:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Ly4/h;->l:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ly4/h;->l:[J

    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [J

    aput-wide v0, v3, v2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    iput-object v3, p0, Ly4/h;->l:[J

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Ly4/h;->k:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ly4/h;->k:[J

    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [J

    aput-wide v0, v3, v2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    iput-object v3, p0, Ly4/h;->k:[J

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v2

    iget-object p1, p0, Ly4/h;->j:[J

    if-nez p1, :cond_1

    new-array p1, v1, [J

    aput-wide v2, p1, v0

    iput-object p1, p0, Ly4/h;->j:[J

    return-void

    :cond_1
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Ly4/h;->j:[J

    array-length v4, p1

    add-int/2addr v1, v4

    new-array v1, v1, [J

    aput-wide v2, v1, v4

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    iput-object v1, p0, Ly4/h;->j:[J

    :cond_3
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0, p1}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-virtual {p0, p1, v0, v1}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-virtual {p0, p1, p2, v0}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    iget-object v4, v1, Ly4/h;->q:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v1, Ly4/h;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v3

    :cond_2
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SafeMode:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    iget-boolean v5, v1, Ly4/h;->r:Z

    if-nez v5, :cond_34

    and-int v5, p3, v4

    if-nez v5, :cond_34

    sget v5, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    and-int/2addr v4, v5

    if-nez v4, :cond_34

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    iget-boolean v5, v1, Ly4/h;->i:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    and-int v5, p3, v4

    if-nez v5, :cond_4

    sget v5, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v7

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0xc0

    const-string v9, "autoType is not support. "

    if-ge v5, v8, :cond_33

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x3

    if-lt v5, v8, :cond_33

    if-nez v2, :cond_6

    :cond_5
    :goto_3
    move v5, v6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v10

    const-wide v12, -0x6f5da0a455dead62L    # -1.514751450580626E-228

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x2d10a5801b9d6136L    # 1.2768618085266423E-91

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x50a795a8e1cfd395L    # -1.2869594668238042E-80

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x12ff8cff584dd83aL    # -1.1341028219519378E217

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x295c4605fd1eaa95L

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x47ef269aadc650b4L    # 3.312520992710671E38

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, 0x6439c4dff712ae8bL    # 6.373467611436065E174

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x1c22678a5d23ad7dL    # -1.1437309411088266E173

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x1d572245fc1961f3L    # -1.8328867399748285E167

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const-wide v12, -0x28cb314b3c162e26L    # -1.2509996135591577E112

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, v7

    :goto_4
    const/16 v10, 0x24

    const/16 v11, 0x2e

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    int-to-long v12, v12

    const-wide v14, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    xor-long/2addr v12, v14

    const-wide v16, 0x100000001b3L

    mul-long v12, v12, v16

    const-wide v18, -0x509be9b379fdb0e6L    # -2.1176223865607047E-80

    cmp-long v18, v12, v18

    if-eqz v18, :cond_32

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v19, v4

    int-to-long v3, v8

    xor-long/2addr v3, v12

    mul-long v3, v3, v16

    const-wide v12, 0x9198507b5af98f0L

    cmp-long v3, v3, v12

    if-eqz v3, :cond_31

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v3, v14

    mul-long v3, v3, v16

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-long v12, v8

    xor-long/2addr v3, v12

    mul-long v3, v3, v16

    const/4 v8, 0x2

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-long v12, v8

    xor-long/2addr v3, v12

    mul-long v3, v3, v16

    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v12

    sget-object v8, Ly4/h;->y:[J

    invoke-static {v8, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_8

    move v8, v7

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    iget-object v14, v1, Ly4/h;->j:[J

    if-eqz v14, :cond_a

    move-wide/from16 v20, v3

    const/4 v14, 0x3

    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-wide/from16 v22, v12

    int-to-long v11, v15

    xor-long v11, v20, v11

    mul-long v11, v11, v16

    iget-object v13, v1, Ly4/h;->j:[J

    invoke-static {v13, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    if-gez v13, :cond_9

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v20, v11

    move-wide/from16 v12, v22

    const/16 v11, 0x2e

    goto :goto_6

    :cond_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-wide/from16 v22, v12

    if-nez v8, :cond_f

    if-nez v19, :cond_b

    if-eqz v5, :cond_f

    :cond_b
    move-wide v12, v3

    const/4 v11, 0x3

    :goto_7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_f

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    xor-long/2addr v12, v14

    mul-long v12, v12, v16

    iget-object v14, v1, Ly4/h;->l:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_c

    iget-object v14, v1, Ly4/h;->g:Ljava/lang/ClassLoader;

    invoke-static {v0, v14, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v14

    if-eqz v14, :cond_c

    return-object v14

    :cond_c
    iget-object v14, v1, Ly4/h;->k:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->R(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    if-nez v14, :cond_e

    iget-object v14, v1, Ly4/h;->l:[J

    move-wide/from16 v6, v22

    invoke-static {v14, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_d

    goto :goto_8

    :cond_d
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move-wide/from16 v6, v22

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v22, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->R(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_10

    iget-object v6, v1, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    :cond_10
    if-nez v2, :cond_11

    if-eqz v6, :cond_11

    const-class v7, Ljava/lang/Throwable;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_11

    if-nez v19, :cond_11

    const/4 v6, 0x0

    :cond_11
    if-nez v6, :cond_12

    iget-object v6, v1, Ly4/h;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    :cond_12
    if-eqz v8, :cond_13

    iget-object v6, v1, Ly4/h;->g:Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    :cond_13
    const-string v7, " -> "

    const-string v8, "type not match. "

    if-eqz v6, :cond_16

    if-eqz v2, :cond_15

    const-class v3, Ljava/util/HashMap;

    if-eq v6, v3, :cond_15

    const-class v3, Ljava/util/LinkedHashMap;

    if-eq v6, v3, :cond_15

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_9

    :cond_14
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    :goto_9
    return-object v6

    :cond_16
    const-string v11, "Error"

    const-string v12, "Exception"

    if-nez v19, :cond_1e

    const/4 v13, 0x3

    :goto_a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_1e

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    xor-long/2addr v3, v14

    mul-long v3, v3, v16

    iget-object v14, v1, Ly4/h;->k:[J

    invoke-static {v14, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_19

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v2, 0x0

    goto :goto_b

    :cond_18
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_b
    return-object v2

    :cond_19
    iget-object v14, v1, Ly4/h;->l:[J

    invoke-static {v14, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_1d

    iget-object v3, v1, Ly4/h;->g:Ljava/lang/ClassLoader;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1a

    return-object v2

    :cond_1a
    if-eqz v2, :cond_1c

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_c

    :cond_1b
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1c
    :goto_c
    return-object v3

    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_1e
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Ly4/h;->g:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1f

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_f

    :catch_0
    const/4 v3, 0x0

    :catch_1
    const/4 v15, 0x0

    goto :goto_10

    :cond_1f
    :try_start_2
    const-class v4, Ly4/h;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_d
    if-eqz v3, :cond_20

    :try_start_3
    new-instance v4, Lcom/alibaba/fastjson/asm/b;

    const/4 v10, 0x1

    invoke-direct {v4, v3, v10}, Lcom/alibaba/fastjson/asm/b;-><init>(Ljava/io/InputStream;Z)V

    new-instance v13, Lcom/alibaba/fastjson/asm/TypeCollector;

    const-string v14, "<clinit>"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v15, 0x0

    :try_start_4
    new-array v10, v15, [Ljava/lang/Class;

    invoke-direct {v13, v14, v10}, Lcom/alibaba/fastjson/asm/TypeCollector;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/asm/b;->a(Lcom/alibaba/fastjson/asm/TypeCollector;)V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/asm/TypeCollector;->c()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_f

    :cond_20
    const/4 v15, 0x0

    move v4, v15

    :goto_e
    invoke-static {v3}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    goto :goto_11

    :catch_2
    const/4 v15, 0x0

    const/4 v3, 0x0

    goto :goto_10

    :goto_f
    invoke-static {v3}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_3
    :goto_10
    invoke-static {v3}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    move v4, v15

    :goto_11
    if-nez v19, :cond_21

    if-nez v4, :cond_21

    if-eqz v5, :cond_24

    :cond_21
    if-nez v19, :cond_23

    if-eqz v4, :cond_22

    goto :goto_12

    :cond_22
    move v6, v15

    goto :goto_13

    :cond_23
    :goto_12
    const/4 v6, 0x1

    :goto_13
    iget-object v3, v1, Ly4/h;->g:Ljava/lang/ClassLoader;

    invoke-static {v0, v3, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    :cond_24
    if-eqz v6, :cond_2c

    if-eqz v4, :cond_26

    if-eqz v19, :cond_25

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->b(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_25
    return-object v6

    :cond_26
    const-class v3, Ljava/lang/ClassLoader;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-class v3, Ljavax/sql/DataSource;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-class v3, Ljavax/sql/RowSet;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2b

    if-eqz v2, :cond_29

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v19, :cond_27

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->b(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_27
    return-object v6

    :cond_28
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_29
    iget-object v2, v1, Ly4/h;->f:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v6, v6, v2}, Lcom/alibaba/fastjson/util/h;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/h;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2c

    if-nez v19, :cond_2a

    goto :goto_14

    :cond_2a
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    :goto_14
    if-nez v19, :cond_2f

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    const/4 v2, 0x0

    goto :goto_15

    :cond_2e
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_15
    return-object v2

    :cond_2f
    if-eqz v6, :cond_30

    if-eqz v19, :cond_30

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->b(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_30
    return-object v6

    :cond_31
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeMode not support autoType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public k(Ly4/h;Lcom/alibaba/fastjson/util/h;Lcom/alibaba/fastjson/util/d;)Lz4/l;
    .locals 4

    iget-object p2, p2, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lx4/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Void;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lz4/c;

    invoke-direct {v0, p1, p2, p3}, Lz4/c;-><init>(Ly4/h;Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    return-object v0

    :cond_3
    new-instance v0, Lz4/f;

    invoke-direct {v0, p1, p2, p3}, Lz4/f;-><init>(Ly4/h;Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    return-object v0
.end method

.method public l(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;
    .locals 11

    iget-boolean v0, p0, Ly4/h;->d:Z

    iget-boolean v1, p0, Ly4/h;->m:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    const-class v1, Ljava/lang/Void;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const-class v4, Lx4/d;

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lx4/d;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lx4/d;->deserializer()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lz4/b2;

    if-eqz v5, :cond_0

    check-cast v0, Lz4/b2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    invoke-interface {v4}, Lx4/d;->asm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Lx4/d;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/util/h;->f(Ljava/lang/Class;Lx4/d;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, p1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_5

    if-nez v4, :cond_3

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_6

    move v0, v3

    :cond_6
    if-eqz v0, :cond_7

    iget-object v4, p0, Ly4/h;->h:Lz4/a;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lz4/a;->a:Lcom/alibaba/fastjson/util/a;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/util/a;->c(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_8
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v3

    :cond_9
    iget-object v6, p0, Ly4/h;->f:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    sget-boolean v8, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    iget-boolean v9, p0, Ly4/h;->n:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson/util/h;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;

    move-result-object v4

    if-eqz v0, :cond_a

    iget-object v5, v4, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v5, v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_a

    move v0, v3

    :cond_a
    iget-object v5, v4, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_b

    if-nez v5, :cond_b

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_b

    move v0, v3

    :cond_b
    iget-object v4, v4, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_14

    aget-object v7, v4, v6

    iget-boolean v8, v7, Lcom/alibaba/fastjson/util/d;->h:Z

    if-eqz v8, :cond_d

    :cond_c
    :goto_3
    move v0, v3

    goto/16 :goto_4

    :cond_d
    iget-object v8, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v8}, Ljava/lang/Class;->isMemberClass()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/d;->m()Ljava/lang/reflect/Member;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/d;->m()Ljava/lang/reflect/Member;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-interface {v9}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Lx4/b;->format()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_c

    invoke-interface {v9}, Lx4/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v1, :cond_c

    invoke-interface {v9}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_c

    invoke-interface {v9}, Lx4/b;->unwrapped()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_11
    iget-object v7, v7, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-le v7, v2, :cond_12

    goto :goto_3

    :cond_12
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p0, v8}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v7

    instance-of v7, v7, Lz4/h;

    if-nez v7, :cond_13

    goto :goto_3

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_14
    :goto_4
    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_15

    move v0, v3

    :cond_15
    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->z0(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_5

    :cond_16
    move v3, v0

    :goto_5
    if-nez v3, :cond_17

    new-instance v0, Lz4/o;

    invoke-direct {v0, p0, p1, p2}, Lz4/o;-><init>(Ly4/h;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_17
    iget-object v0, p0, Ly4/h;->f:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/h;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/h;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Ly4/h;->h:Lz4/a;

    invoke-virtual {v1, p0, v0}, Lz4/a;->v(Ly4/h;Lcom/alibaba/fastjson/util/h;)Lz4/b2;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create asm deserializer error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    new-instance p1, Lz4/o;

    invoke-direct {p1, p0, v0}, Lz4/o;-><init>(Ly4/h;Lcom/alibaba/fastjson/util/h;)V

    return-object p1

    :catch_2
    new-instance v0, Lz4/o;

    invoke-direct {v0, p0, p1, p2}, Lz4/o;-><init>(Ly4/h;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public m(Ljava/lang/reflect/Type;)Lz4/b2;
    .locals 2

    invoke-static {p1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/b2;

    return-object p1

    :cond_0
    iget-object v1, p0, Ly4/h;->b:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/util/g;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/b2;

    return-object p1
.end method

.method public n()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Ly4/h;->g:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public o(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "java.util.Optional"

    invoke-virtual {v0, v2}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v4

    if-nez v4, :cond_0

    instance-of v5, v2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    if-eqz v5, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-static {v4}, Lcom/alibaba/fastjson/g;->b(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-class v5, Lx4/d;

    invoke-static {v1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lx4/d;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lx4/d;->mappingTo()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_4

    invoke-virtual {v0, v6, v6}, Ly4/h;->o(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v1

    return-object v1

    :cond_4
    instance-of v6, v2, Ljava/lang/reflect/WildcardType;

    if-nez v6, :cond_5

    instance-of v6, v2, Ljava/lang/reflect/TypeVariable;

    if-nez v6, :cond_5

    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p1}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    iget-object v6, v0, Ly4/h;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x24

    const/16 v9, 0x2e

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.awt."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_a

    invoke-static/range {p1 .. p1}, La5/o;->j(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-boolean v7, Ly4/h;->A:Z

    if-nez v7, :cond_a

    const-string v4, "java.awt.Rectangle"

    const-string v7, "java.awt.Color"

    const-string v12, "java.awt.Point"

    const-string v13, "java.awt.Font"

    filled-new-array {v12, v13, v4, v7}, [Ljava/lang/String;

    move-result-object v4

    move v7, v10

    :goto_0
    if-ge v7, v9, :cond_9

    :try_start_0
    aget-object v12, v4, v7

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v7, La5/o;->a:La5/o;

    invoke-virtual {v0, v4, v7}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    sput-boolean v11, Ly4/h;->A:Z

    :cond_9
    sget-object v4, La5/o;->a:La5/o;

    :cond_a
    sget-boolean v7, Ly4/h;->B:Z

    if-nez v7, :cond_e

    :try_start_1
    const-string v7, "java.time."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v12, "java.time.LocalDateTime"

    const-string v13, "java.time.LocalDate"

    const-string v14, "java.time.LocalTime"

    const-string v15, "java.time.ZonedDateTime"

    const-string v16, "java.time.OffsetDateTime"

    const-string v17, "java.time.OffsetTime"

    const-string v18, "java.time.ZoneOffset"

    const-string v19, "java.time.ZoneRegion"

    const-string v20, "java.time.ZoneId"

    const-string v21, "java.time.Period"

    const-string v22, "java.time.Duration"

    const-string v23, "java.time.Instant"

    filled-new-array/range {v12 .. v23}, [Ljava/lang/String;

    move-result-object v3

    move v7, v10

    :goto_1
    const/16 v9, 0xc

    if-ge v7, v9, :cond_e

    aget-object v9, v3, v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lz4/y1;->a:Lz4/y1;

    invoke-virtual {v0, v3, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    return-object v4

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "java.util.OptionalDouble"

    const-string v12, "java.util.OptionalInt"

    const-string v13, "java.util.OptionalLong"

    filled-new-array {v3, v7, v12, v13}, [Ljava/lang/String;

    move-result-object v3

    move v7, v10

    :goto_2
    if-ge v7, v9, :cond_e

    aget-object v12, v3, v7

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lz4/d3;->a:Lz4/d3;

    invoke-virtual {v0, v3, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_1
    sput-boolean v11, Ly4/h;->B:Z

    :cond_e
    sget-boolean v3, Ly4/h;->C:Z

    if-nez v3, :cond_10

    :try_start_2
    const-string v3, "org.joda.time."

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v12, "org.joda.time.DateTime"

    const-string v13, "org.joda.time.LocalDate"

    const-string v14, "org.joda.time.LocalDateTime"

    const-string v15, "org.joda.time.LocalTime"

    const-string v16, "org.joda.time.Instant"

    const-string v17, "org.joda.time.Period"

    const-string v18, "org.joda.time.Duration"

    const-string v19, "org.joda.time.DateTimeZone"

    const-string v20, "org.joda.time.format.DateTimeFormatter"

    filled-new-array/range {v12 .. v20}, [Ljava/lang/String;

    move-result-object v3

    move v7, v10

    :goto_3
    const/16 v9, 0x9

    if-ge v7, v9, :cond_10

    aget-object v9, v3, v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, La5/q0;->a:La5/q0;

    invoke-virtual {v0, v3, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v4

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catchall_2
    sput-boolean v11, Ly4/h;->C:Z

    :cond_10
    sget-boolean v3, Ly4/h;->D:Z

    if-nez v3, :cond_12

    const-string v3, "com.google.common.collect."

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :try_start_3
    const-string v3, "com.google.common.collect.HashMultimap"

    const-string v7, "com.google.common.collect.LinkedListMultimap"

    const-string v9, "com.google.common.collect.LinkedHashMultimap"

    const-string v12, "com.google.common.collect.ArrayListMultimap"

    const-string v13, "com.google.common.collect.TreeMultimap"

    filled-new-array {v3, v7, v9, v12, v13}, [Ljava/lang/String;

    move-result-object v3

    move v7, v10

    :goto_4
    const/4 v9, 0x5

    if-ge v7, v9, :cond_12

    aget-object v9, v3, v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, La5/i0;->a:La5/i0;

    invoke-virtual {v0, v3, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    sput-boolean v11, Ly4/h;->D:Z

    :cond_12
    const-string v3, "java.nio.ByteBuffer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v4, La5/u;->a:La5/u;

    invoke-virtual {v0, v1, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    :cond_13
    const-string v3, "java.nio.file.Path"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v4, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    :cond_14
    const-class v3, Ljava/util/Map$Entry;

    if-ne v1, v3, :cond_15

    sget-object v4, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    :cond_15
    const-string v3, "org.javamoney.moneta.Money"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v4, Ld5/a;->a:Ld5/a;

    invoke-virtual {v0, v1, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    :cond_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :try_start_4
    const-class v6, Lz4/d;

    invoke-static {v6, v3}, Lcom/alibaba/fastjson/util/l;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_5

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_5
    if-nez v4, :cond_18

    invoke-virtual {v0, v2}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v4

    :cond_18
    if-eqz v4, :cond_19

    return-object v4

    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-boolean v3, v0, Ly4/h;->n:Z

    if-eqz v3, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    :goto_6
    if-ge v10, v4, :cond_1b

    aget-object v6, v3, v10

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->s0(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v0, v1, v2}, Ly4/h;->l(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    return-object v1

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_1c

    move-object v4, v3

    goto :goto_7

    :cond_1c
    move-object v4, v1

    :goto_7
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lx4/d;

    if-eqz v4, :cond_1d

    invoke-interface {v4}, Lx4/d;->deserializer()Ljava/lang/Class;

    move-result-object v4

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/b2;

    invoke-virtual {v0, v1, v4}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-object v4

    :catchall_3
    :cond_1d
    if-eqz v3, :cond_1e

    invoke-static {v3, v1}, Ly4/h;->q(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1f

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :cond_1e
    invoke-static {v1, v1}, Ly4/h;->q(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    :catch_2
    :cond_1f
    :goto_8
    if-eqz v8, :cond_20

    new-instance v2, Lz4/g;

    invoke-direct {v2, v8}, Lz4/g;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1, v2}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    return-object v2

    :cond_20
    invoke-virtual/range {p0 .. p1}, Ly4/h;->r(Ljava/lang/Class;)Lz4/b2;

    move-result-object v1

    goto :goto_b

    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v1, La5/y0;->a:La5/y0;

    goto :goto_b

    :cond_22
    const-class v3, Ljava/util/Set;

    if-eq v1, v3, :cond_29

    const-class v3, Ljava/util/HashSet;

    if-eq v1, v3, :cond_29

    const-class v3, Ljava/util/Collection;

    if-eq v1, v3, :cond_29

    const-class v4, Ljava/util/List;

    if-eq v1, v4, :cond_29

    const-class v4, Ljava/util/ArrayList;

    if-ne v1, v4, :cond_23

    goto :goto_a

    :cond_23
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v1, La5/z;->a:La5/z;

    goto :goto_b

    :cond_24
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v1, Lz4/z1;->a:Lz4/z1;

    goto :goto_b

    :cond_25
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance v3, Lz4/k3;

    invoke-direct {v3, v0, v1}, Lz4/k3;-><init>(Ly4/h;Ljava/lang/Class;)V

    :goto_9
    move-object v1, v3

    goto :goto_b

    :cond_26
    const-class v3, Lz4/f3;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v3, Lz4/g3;

    invoke-direct {v3, v1}, Lz4/g3;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    :cond_27
    const-class v3, Ljava/net/InetAddress;

    if-ne v1, v3, :cond_28

    sget-object v1, La5/w0;->b:La5/w0;

    goto :goto_b

    :cond_28
    invoke-virtual {v0, v1, v2}, Ly4/h;->l(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v1

    goto :goto_b

    :cond_29
    :goto_a
    sget-object v1, La5/z;->a:La5/z;

    :goto_b
    invoke-virtual {v0, v2, v1}, Ly4/h;->z(Ljava/lang/reflect/Type;Lz4/b2;)V

    return-object v1

    :cond_2a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v8
.end method

.method public p(Ljava/lang/reflect/Type;)Lz4/b2;
    .locals 2

    invoke-virtual {p0, p1}, Ly4/h;->m(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Ly4/h;->o(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Ly4/h;->o(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lz4/p;->a:Lz4/p;

    return-object p1
.end method

.method protected r(Ljava/lang/Class;)Lz4/b2;
    .locals 1

    new-instance v0, Lz4/h;

    invoke-direct {v0, p1}, Lz4/h;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Ly4/h;->n:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Ly4/h;->r:Z

    return v0
.end method

.method public z(Ljava/lang/reflect/Type;Lz4/b2;)V
    .locals 3

    invoke-static {p1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ly4/h;->b:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/fastjson/util/g;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    iget-object v2, p0, Ly4/h;->b:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ly4/h;->a:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
