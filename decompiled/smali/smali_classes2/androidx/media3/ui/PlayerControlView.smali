.class public Landroidx/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerControlView$j;,
        Landroidx/media3/ui/PlayerControlView$b;,
        Landroidx/media3/ui/PlayerControlView$e;,
        Landroidx/media3/ui/PlayerControlView$h;,
        Landroidx/media3/ui/PlayerControlView$c;,
        Landroidx/media3/ui/PlayerControlView$f;,
        Landroidx/media3/ui/PlayerControlView$d;,
        Landroidx/media3/ui/PlayerControlView$m;,
        Landroidx/media3/ui/PlayerControlView$k;,
        Landroidx/media3/ui/PlayerControlView$i;,
        Landroidx/media3/ui/PlayerControlView$l;,
        Landroidx/media3/ui/PlayerControlView$g;
    }
.end annotation


# static fields
.field private static final A0:[F

.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private final A:Landroid/view/View;

.field private final B:Landroid/view/View;

.field private final C:Landroid/widget/TextView;

.field private final D:Landroid/widget/TextView;

.field private final E:Landroidx/media3/ui/y0;

.field private final F:Ljava/lang/StringBuilder;

.field private final G:Ljava/util/Formatter;

.field private final H:Landroidx/media3/common/e0$b;

.field private final I:Landroidx/media3/common/e0$c;

.field private final J:Ljava/lang/Runnable;

.field private final K:Landroid/graphics/drawable/Drawable;

.field private final L:Landroid/graphics/drawable/Drawable;

.field private final M:Landroid/graphics/drawable/Drawable;

.field private final N:Landroid/graphics/drawable/Drawable;

.field private final O:Landroid/graphics/drawable/Drawable;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Landroid/graphics/drawable/Drawable;

.field private final T:Landroid/graphics/drawable/Drawable;

.field private final U:F

.field private final V:F

.field private final W:Ljava/lang/String;

.field private final a:Landroidx/media3/ui/e0;

.field private final a0:Ljava/lang/String;

.field private final b:Landroid/content/res/Resources;

.field private final b0:Landroid/graphics/drawable/Drawable;

.field private final c:Landroidx/media3/ui/PlayerControlView$c;

.field private final c0:Landroid/graphics/drawable/Drawable;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d0:Ljava/lang/String;

.field private final e:Landroidx/recyclerview/widget/RecyclerView;

.field private final e0:Ljava/lang/String;

.field private final f:Landroidx/media3/ui/PlayerControlView$h;

.field private final f0:Landroid/graphics/drawable/Drawable;

.field private final g:Landroidx/media3/ui/PlayerControlView$e;

.field private final g0:Landroid/graphics/drawable/Drawable;

.field private final h:Landroidx/media3/ui/PlayerControlView$j;

.field private final h0:Ljava/lang/String;

.field private final i:Landroidx/media3/ui/PlayerControlView$b;

.field private final i0:Ljava/lang/String;

.field private final j:Landroidx/media3/ui/z0;

.field private j0:Landroidx/media3/common/a0;

.field private final k:Landroid/widget/PopupWindow;

.field private k0:Landroidx/media3/ui/PlayerControlView$d;

.field private final l:I

.field private l0:Z

.field private final m:Landroid/widget/ImageView;

.field private m0:Z

.field private final n:Landroid/widget/ImageView;

.field private n0:Z

.field private final o:Landroid/widget/ImageView;

.field private o0:Z

.field private final p:Landroid/view/View;

.field private p0:Z

.field private final q:Landroid/view/View;

.field private q0:Z

.field private final r:Landroid/widget/TextView;

.field private r0:I

.field private final s:Landroid/widget/TextView;

.field private s0:I

.field private final t:Landroid/widget/ImageView;

.field private t0:I

.field private final u:Landroid/widget/ImageView;

.field private u0:[J

.field private final v:Landroid/widget/ImageView;

.field private v0:[Z

.field private final w:Landroid/widget/ImageView;

.field private w0:[J

.field private final x:Landroid/widget/ImageView;

.field private x0:[Z

.field private final y:Landroid/widget/ImageView;

.field private y0:J

.field private final z:Landroid/view/View;

.field private z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.ui"

    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/ui/PlayerControlView;->A0:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 42
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p4

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v2, Landroidx/media3/ui/R$layout;->exo_player_control_view:I

    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_play:I

    sget v4, Landroidx/media3/ui/R$drawable;->exo_styled_controls_pause:I

    sget v5, Landroidx/media3/ui/R$drawable;->exo_styled_controls_next:I

    sget v7, Landroidx/media3/ui/R$drawable;->exo_styled_controls_simple_fastforward:I

    sget v8, Landroidx/media3/ui/R$drawable;->exo_styled_controls_previous:I

    sget v9, Landroidx/media3/ui/R$drawable;->exo_styled_controls_simple_rewind:I

    sget v10, Landroidx/media3/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    sget v11, Landroidx/media3/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    sget v12, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_off:I

    sget v13, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_one:I

    sget v14, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_all:I

    sget v15, Landroidx/media3/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    move/from16 p2, v0

    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    move/from16 v16, v0

    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    move/from16 v17, v0

    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_vr:I

    move/from16 v18, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/media3/ui/PlayerControlView;->o0:Z

    const/16 v0, 0x1388

    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->r0:I

    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->t0:I

    const/16 v0, 0xc8

    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->s0:I

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/media3/ui/R$styleable;->PlayerControlView:[I

    move/from16 v21, v14

    move/from16 v20, v15

    const/4 v14, 0x0

    move/from16 v15, p3

    invoke-virtual {v0, v6, v1, v15, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_play_icon:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_pause_icon:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_next_icon:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fastforward_icon:I

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_previous_icon:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_rewind_icon:I

    invoke-virtual {v1, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fullscreen_exit_icon:I

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fullscreen_enter_icon:I

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_off_icon:I

    invoke-virtual {v1, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_one_icon:I

    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_all_icon:I

    move/from16 v14, v21

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_shuffle_on_icon:I

    move/from16 v15, v20

    invoke-virtual {v1, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_shuffle_off_icon:I

    move/from16 p3, v2

    move/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_subtitle_on_icon:I

    move/from16 p2, v0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_subtitle_off_icon:I

    move/from16 v16, v0

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_vr_icon:I

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v20, v0

    move/from16 v18, v5

    move-object/from16 v5, p0

    :try_start_1
    iget v0, v5, Landroidx/media3/ui/PlayerControlView;->r0:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v5, Landroidx/media3/ui/PlayerControlView;->r0:I

    iget v0, v5, Landroidx/media3/ui/PlayerControlView;->t0:I

    invoke-static {v1, v0}, Landroidx/media3/ui/PlayerControlView;->V(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, v5, Landroidx/media3/ui/PlayerControlView;->t0:I

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_rewind_button:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v21, v0

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_fastforward_button:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v22, v0

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_previous_button:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v23, v0

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_next_button:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    move/from16 v24, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v25, v2

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_subtitle_button:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v26, v2

    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_vr_button:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    move/from16 v27, v2

    iget v2, v5, Landroidx/media3/ui/PlayerControlView;->s0:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/media3/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_animation_enabled:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v37, v0

    move/from16 p2, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v9, v17

    move/from16 v0, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v35, v27

    move v14, v3

    move v15, v4

    move v4, v8

    move/from16 v8, v16

    move/from16 v16, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    move/from16 v0, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v5

    move-object v5, v1

    move v1, v2

    move/from16 v2, p2

    move/from16 p2, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v9, v18

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x1

    move v14, v3

    move v15, v4

    move v4, v8

    move/from16 v8, v17

    move/from16 v41, v2

    move v2, v1

    move/from16 v1, v41

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v3, Landroidx/media3/ui/PlayerControlView$c;

    const/4 v2, 0x0

    invoke-direct {v3, v5, v2}, Landroidx/media3/ui/PlayerControlView$c;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V

    iput-object v3, v5, Landroidx/media3/ui/PlayerControlView;->c:Landroidx/media3/ui/PlayerControlView$c;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Landroidx/media3/common/e0$b;

    invoke-direct {v2}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    new-instance v2, Landroidx/media3/common/e0$c;

    invoke-direct {v2}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    move/from16 v17, v4

    new-instance v4, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    const/4 v2, 0x0

    new-array v4, v2, [J

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->u0:[J

    new-array v4, v2, [Z

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    new-array v4, v2, [J

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->w0:[J

    new-array v4, v2, [Z

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    new-instance v2, Landroidx/media3/ui/j;

    invoke-direct {v2, v5}, Landroidx/media3/ui/j;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    sget v2, Landroidx/media3/ui/R$id;->exo_duration:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/TextView;

    sget v2, Landroidx/media3/ui/R$id;->exo_position:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/TextView;

    sget v2, Landroidx/media3/ui/R$id;->exo_subtitle:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v2, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->x:Landroid/widget/ImageView;

    new-instance v4, Landroidx/media3/ui/k;

    invoke-direct {v4, v5}, Landroidx/media3/ui/k;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-static {v2, v4}, Landroidx/media3/ui/PlayerControlView;->X(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    sget v2, Landroidx/media3/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->y:Landroid/widget/ImageView;

    new-instance v4, Landroidx/media3/ui/k;

    invoke-direct {v4, v5}, Landroidx/media3/ui/k;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-static {v2, v4}, Landroidx/media3/ui/PlayerControlView;->X(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    sget v2, Landroidx/media3/ui/R$id;->exo_settings:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v2, Landroidx/media3/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->A:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget v2, Landroidx/media3/ui/R$id;->exo_audio_track:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->B:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    sget v2, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/y0;

    sget v4, Landroidx/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_5

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    move/from16 v38, p2

    move-object/from16 v39, v3

    move-object v2, v5

    move-object/from16 v40, v6

    move/from16 v22, v13

    move/from16 v13, v17

    const/4 v3, 0x0

    move/from16 v17, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move v10, v7

    goto/16 :goto_2

    :cond_5
    if-eqz v4, :cond_6

    new-instance v2, Landroidx/media3/ui/DefaultTimeBar;

    const/16 v18, 0x0

    sget v20, Landroidx/media3/ui/R$style;->ExoStyledControls_TimeBar:I

    const/16 v21, 0x0

    move-object/from16 p3, v2

    move/from16 v38, p2

    move-object/from16 v39, v3

    move-object/from16 v3, p1

    move-object/from16 p2, v4

    move/from16 v22, v13

    move/from16 v13, v17

    move-object/from16 v4, v21

    move/from16 v5, v18

    move-object/from16 v40, v6

    move-object/from16 v6, p4

    move/from16 v17, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move v10, v7

    move/from16 v7, v20

    invoke-direct/range {v2 .. v7}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    sget v2, Landroidx/media3/ui/R$id;->exo_progress:I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object/from16 v2, p0

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move/from16 v38, p2

    move-object/from16 v39, v3

    move-object v2, v5

    move-object/from16 v40, v6

    move/from16 v22, v13

    move/from16 v13, v17

    const/4 v3, 0x0

    move/from16 v17, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move v10, v7

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    :goto_2
    iget-object v4, v2, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    move-object/from16 v5, v39

    if-eqz v4, :cond_7

    invoke-interface {v4, v5}, Landroidx/media3/ui/y0;->addListener(Landroidx/media3/ui/y0$a;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v2, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    sget v6, Landroidx/media3/ui/R$id;->exo_play_pause:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    sget v6, Landroidx/media3/ui/R$id;->exo_prev:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    move-object/from16 v7, p1

    if-eqz v6, :cond_9

    invoke-static {v7, v4, v13}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    sget v13, Landroidx/media3/ui/R$id;->exo_next:I

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v2, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    if-eqz v13, :cond_a

    invoke-static {v7, v4, v12}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    sget v12, Landroidx/media3/ui/R$font;->roboto_medium_numbers:I

    invoke-static {v7, v12}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v12

    sget v3, Landroidx/media3/ui/R$id;->exo_rew:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 p2, v13

    sget v13, Landroidx/media3/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v3, :cond_b

    move-object/from16 p3, v6

    move/from16 v6, v38

    invoke-static {v7, v4, v6}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    goto :goto_3

    :cond_b
    move-object/from16 p3, v6

    const/4 v3, 0x0

    if-eqz v13, :cond_c

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v13, v2, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    iput-object v13, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    goto :goto_3

    :cond_c
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    :goto_3
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    sget v3, Landroidx/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v6, Landroidx/media3/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v3, :cond_e

    invoke-static {v7, v4, v10}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    if-eqz v6, :cond_f

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    goto :goto_4

    :cond_f
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    :goto_4
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    if-eqz v3, :cond_10

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    sget v3, Landroidx/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    if-eqz v3, :cond_11

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    sget v6, Landroidx/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    if-eqz v6, :cond_12

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    sget v10, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v10, v12

    iput v10, v2, Landroidx/media3/ui/PlayerControlView;->U:F

    sget v10, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    iput v10, v2, Landroidx/media3/ui/PlayerControlView;->V:F

    sget v10, Landroidx/media3/ui/R$id;->exo_vr:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    if-eqz v10, :cond_13

    invoke-static {v7, v4, v0}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {v2, v0, v10}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    :cond_13
    new-instance v0, Landroidx/media3/ui/e0;

    invoke-direct {v0, v2}, Landroidx/media3/ui/e0;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v0, v2, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    move/from16 v12, v37

    invoke-virtual {v0, v12}, Landroidx/media3/ui/e0;->Y(Z)V

    sget v12, Landroidx/media3/ui/R$string;->exo_controls_playback_speed:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Landroidx/media3/ui/R$drawable;->exo_styled_controls_speed:I

    invoke-static {v7, v4, v13}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 p4, v3

    sget v3, Landroidx/media3/ui/R$string;->exo_track_selection_title_audio:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v12, v3}, [Ljava/lang/String;

    move-result-object v3

    sget v12, Landroidx/media3/ui/R$drawable;->exo_styled_controls_audiotrack:I

    invoke-static {v7, v4, v12}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v18, v10

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    aput-object v13, v10, v19

    const/4 v13, 0x1

    aput-object v12, v10, v13

    new-instance v12, Landroidx/media3/ui/PlayerControlView$h;

    invoke-direct {v12, v2, v3, v10}, Landroidx/media3/ui/PlayerControlView$h;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v12, v2, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    sget v3, Landroidx/media3/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroidx/media3/ui/PlayerControlView;->l:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v10, Landroidx/media3/ui/R$layout;->exo_styled_settings_list:I

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v10, Landroid/widget/PopupWindow;

    const/4 v12, -0x2

    const/4 v13, 0x1

    invoke-direct {v10, v3, v12, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v10, v2, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    sget v3, Landroidx/media3/common/util/a1;->a:I

    const/16 v12, 0x17

    if-ge v3, v12, :cond_14

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v12, 0x0

    invoke-direct {v3, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_14
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v10, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-boolean v13, v2, Landroidx/media3/ui/PlayerControlView;->z0:Z

    new-instance v3, Landroidx/media3/ui/f;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/ui/f;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/z0;

    invoke-static {v7, v4, v8}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->b0:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v4, v9}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->c0:Landroid/graphics/drawable/Drawable;

    sget v3, Landroidx/media3/ui/R$string;->exo_controls_cc_enabled_description:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->d0:Ljava/lang/String;

    sget v3, Landroidx/media3/ui/R$string;->exo_controls_cc_disabled_description:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->e0:Ljava/lang/String;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$j;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Landroidx/media3/ui/PlayerControlView$j;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$b;

    invoke-direct {v3, v2, v5}, Landroidx/media3/ui/PlayerControlView$b;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$e;

    sget v5, Landroidx/media3/ui/R$array;->exo_controls_playback_speeds:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sget-object v8, Landroidx/media3/ui/PlayerControlView;->A0:[F

    invoke-direct {v3, v2, v5, v8}, Landroidx/media3/ui/PlayerControlView$e;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    invoke-static {v7, v4, v14}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v4, v15}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    move/from16 v10, v28

    invoke-static {v7, v4, v10}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->f0:Landroid/graphics/drawable/Drawable;

    move/from16 v3, v29

    invoke-static {v7, v4, v3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->g0:Landroid/graphics/drawable/Drawable;

    move/from16 v3, v30

    invoke-static {v7, v4, v3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    move/from16 v13, v31

    invoke-static {v7, v4, v13}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->N:Landroid/graphics/drawable/Drawable;

    move/from16 v14, v32

    invoke-static {v7, v4, v14}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->O:Landroid/graphics/drawable/Drawable;

    move/from16 v15, v36

    invoke-static {v7, v4, v15}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v4, v1}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_exit_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->h0:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_enter_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->i0:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_repeat_off_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->P:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_repeat_one_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->Q:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_repeat_all_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->R:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->W:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->a0:Ljava/lang/String;

    sget v1, Landroidx/media3/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    iget-object v1, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    invoke-virtual {v0, v1, v11}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    iget-object v1, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    move/from16 v4, v16

    invoke-virtual {v0, v1, v4}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move-object/from16 v4, p3

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move-object/from16 v13, p2

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move/from16 v1, v34

    move-object/from16 v4, v40

    invoke-virtual {v0, v4, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move-object/from16 v10, v18

    move/from16 v1, v35

    invoke-virtual {v0, v10, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    iget v1, v2, Landroidx/media3/ui/PlayerControlView;->t0:I

    if-eqz v1, :cond_15

    move v12, v3

    :cond_15
    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v12}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    new-instance v0, Landroidx/media3/ui/l;

    invoke-direct {v0, v2}, Landroidx/media3/ui/l;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$e;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    return-object p0
.end method

.method static synthetic B(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->B:Landroid/view/View;

    return-object p0
.end method

.method static synthetic C(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    return-object p0
.end method

.method static synthetic D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic E(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$j;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    return-object p0
.end method

.method static synthetic F(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    return-void
.end method

.method static synthetic G(Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->c0(I)V

    return-void
.end method

.method static synthetic H(Landroidx/media3/ui/PlayerControlView;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic I(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic J(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic K(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->c0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic L(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->d0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic M(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->e0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic N(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->o0()V

    return-void
.end method

.method static synthetic O(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->s0()V

    return-void
.end method

.method static synthetic P(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    return-void
.end method

.method static synthetic Q(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    return-void
.end method

.method static synthetic R(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->m0()V

    return-void
.end method

.method private static S(Landroidx/media3/common/a0;Landroidx/media3/common/e0$c;)Z
    .locals 8

    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/e0;->p()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3, p1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/e0$c;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->r0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Z

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private U(Landroidx/media3/common/i0;I)Lcom/google/common/collect/ImmutableList;
    .locals 8

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/i0$a;

    invoke-virtual {v4}, Landroidx/media3/common/i0$a;->d()I

    move-result v5

    if-eq v5, p2, :cond_0

    goto :goto_3

    :cond_0
    move v5, v2

    :goto_1
    iget v6, v4, Landroidx/media3/common/i0$a;->a:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Landroidx/media3/common/i0$a;->i(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    move-result-object v6

    iget v7, v6, Landroidx/media3/common/r;->e:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/z0;

    invoke-interface {v7, v6}, Landroidx/media3/ui/z0;->a(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroidx/media3/ui/PlayerControlView$k;

    invoke-direct {v7, p1, v3, v5, v6}, Landroidx/media3/ui/PlayerControlView$k;-><init>(Landroidx/media3/common/i0;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static V(Landroid/content/res/TypedArray;I)I
    .locals 1

    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private W()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$l;->h()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$l;->h()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_2

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->U(Landroidx/media3/common/i0;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlView$b;->p(Ljava/util/List;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->U(Landroidx/media3/common/i0;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView$j;->o(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$j;->o(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static X(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static Y(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic a(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroidx/media3/ui/PlayerControlView;->b0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private a0(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->l0:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    return-void
.end method

.method private b0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->r0()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    sub-int p6, p2, p3

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    neg-int p2, p2

    iget p3, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    sub-int p7, p2, p3

    iget-object p4, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    const/4 p8, -0x1

    const/4 p9, -0x1

    move-object p5, p1

    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->a0(Landroid/view/View;)V

    return-void
.end method

.method private c0(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method static synthetic d(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->u0()V

    return-void
.end method

.method static synthetic e(Landroidx/media3/ui/PlayerControlView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->q0:Z

    return p1
.end method

.method private e0(Landroidx/media3/common/a0;J)V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->p()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/e0$c;->d()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    :goto_1
    invoke-interface {p1, v2, p2, p3}, Landroidx/media3/common/a0;->seekTo(IJ)V

    goto :goto_2

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2, p3}, Landroidx/media3/common/a0;->seekTo(J)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    return-void
.end method

.method static synthetic f(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private g0(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/ui/PlayerControlView;->U:F

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerControlView;->V:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic h(Landroidx/media3/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    return-object p0
.end method

.method private h0()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->r()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    sget v3, Landroidx/media3/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    return-object p0
.end method

.method private i0(Landroid/widget/ImageView;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->f0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->h0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->i0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    return-object p0
.end method

.method private static j0(Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic k(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/a0;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/PlayerControlView;->e0(Landroidx/media3/common/a0;J)V

    return-void
.end method

.method private k0()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->n0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->S(Landroidx/media3/common/a0;Landroidx/media3/common/e0$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v1

    :goto_0
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroidx/media3/common/a0;->h(I)Z

    move-result v2

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->h(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroidx/media3/common/a0;->h(I)Z

    move-result v4

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->p0()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->h0()V

    :cond_4
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v5}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    invoke-direct {p0, v4, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Landroidx/media3/ui/y0;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic l(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Z

    return p0
.end method

.method private l0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->l1(Landroidx/media3/common/a0;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_2

    sget v0, Landroidx/media3/ui/R$string;->exo_controls_play_description:I

    goto :goto_1

    :cond_2
    sget v0, Landroidx/media3/ui/R$string;->exo_controls_pause_description:I

    :goto_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->k1(Landroidx/media3/common/a0;)Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic m(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method private m0()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/z;->a:F

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView$e;->l(F)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView$e;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->q0()V

    return-void
.end method

.method static synthetic n(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method private n0()V
    .locals 13

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->y0:J

    invoke-interface {v0}, Landroidx/media3/common/a0;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/media3/ui/PlayerControlView;->y0:J

    invoke-interface {v0}, Landroidx/media3/common/a0;->u()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlView;->q0:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    if-eqz v5, :cond_3

    invoke-interface {v5, v1, v2}, Landroidx/media3/ui/y0;->setPosition(J)V

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    invoke-interface {v5, v3, v4}, Landroidx/media3/ui/y0;->setBufferedPosition(J)V

    :cond_3
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroidx/media3/ui/y0;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    move-wide v3, v5

    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/z;->a:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_6
    move-wide v7, v5

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->s0:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    const/4 v0, 0x4

    if-eq v4, v0, :cond_8

    if-eq v4, v3, :cond_8

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic o(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    return-object p0
.end method

.method private o0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_6

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    invoke-interface {v0}, Landroidx/media3/common/a0;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic p(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    return-object p0
.end method

.method private p0()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->y()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    sget v3, Landroidx/media3/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic q(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method private q0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$h;->g()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic r(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    return p0
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method static synthetic s(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method private s0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v2, v0}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_5

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->S:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->W:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->a0:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/z;->b(F)Landroidx/media3/common/z;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->b(Landroidx/media3/common/z;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic t(Landroidx/media3/ui/PlayerControlView;)I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    return p0
.end method

.method private t0()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->n0:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    invoke-static {v1, v2}, Landroidx/media3/ui/PlayerControlView;->S(Landroidx/media3/common/a0;Landroidx/media3/common/e0$c;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroidx/media3/ui/PlayerControlView;->y0:J

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroidx/media3/common/a0;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/e0;->q()Z

    move-result v7

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v7, :cond_f

    invoke-interface {v1}, Landroidx/media3/common/a0;->t()I

    move-result v1

    iget-boolean v7, v0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    if-eqz v7, :cond_3

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    move v10, v1

    :goto_2
    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroidx/media3/common/e0;->p()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    move-wide v11, v5

    const/4 v13, 0x0

    :goto_4
    if-gt v10, v7, :cond_e

    if-ne v10, v1, :cond_5

    invoke-static {v11, v12}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v14

    iput-wide v14, v0, Landroidx/media3/ui/PlayerControlView;->y0:J

    :cond_5
    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    invoke-virtual {v2, v10, v14}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    iget-wide v5, v14, Landroidx/media3/common/e0$c;->m:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_6

    iget-boolean v1, v0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    goto/16 :goto_9

    :cond_6
    iget v5, v14, Landroidx/media3/common/e0$c;->n:I

    :goto_5
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    iget v14, v6, Landroidx/media3/common/e0$c;->o:I

    if-gt v5, v14, :cond_d

    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    invoke-virtual {v6}, Landroidx/media3/common/e0$b;->p()I

    move-result v6

    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    invoke-virtual {v14}, Landroidx/media3/common/e0$b;->c()I

    move-result v14

    :goto_6
    if-ge v6, v14, :cond_c

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    invoke-virtual {v4, v6}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide v17

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v4, v17, v19

    if-nez v4, :cond_8

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    iget-wide v3, v4, Landroidx/media3/common/e0$b;->d:J

    cmp-long v17, v3, v8

    if-nez v17, :cond_7

    goto :goto_8

    :cond_7
    move-wide/from16 v17, v3

    :cond_8
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v3

    add-long v17, v17, v3

    const-wide/16 v3, 0x0

    cmp-long v15, v17, v3

    if-ltz v15, :cond_b

    iget-object v15, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    array-length v3, v15

    if-ne v13, v3, :cond_a

    array-length v3, v15

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    array-length v3, v15

    mul-int/lit8 v3, v3, 0x2

    :goto_7
    invoke-static {v15, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    :cond_a
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    add-long v17, v11, v17

    invoke-static/range {v17 .. v18}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v15

    aput-wide v15, v3, v13

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    invoke-virtual {v4, v6}, Landroidx/media3/common/e0$b;->q(I)Z

    move-result v4

    aput-boolean v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    :cond_b
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    iget-wide v3, v6, Landroidx/media3/common/e0$c;->m:J

    add-long/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_4

    :cond_e
    :goto_9
    move-wide v5, v11

    goto :goto_b

    :cond_f
    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroidx/media3/common/a0;->h(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Landroidx/media3/common/a0;->Q()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_10

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v5

    :goto_a
    const/4 v13, 0x0

    goto :goto_b

    :cond_10
    const-wide/16 v5, 0x0

    goto :goto_a

    :goto_b
    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    if-eqz v3, :cond_13

    invoke-interface {v3, v1, v2}, Landroidx/media3/ui/y0;->setDuration(J)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    array-length v1, v1

    add-int v2, v13, v1

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    array-length v4, v3

    if-le v2, v4, :cond_12

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    :cond_12
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    invoke-interface {v1, v3, v4, v2}, Landroidx/media3/ui/y0;->setAdGroupTimesMs([J[ZI)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    return-void
.end method

.method static synthetic u(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method private u0()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->W()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$l;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->q0()V

    return-void
.end method

.method static synthetic v(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    return-object p0
.end method

.method static synthetic w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    return-object p0
.end method

.method static synthetic x(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->l0()V

    return-void
.end method

.method static synthetic y(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic z(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method Z()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/PlayerControlView$m;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/ui/PlayerControlView$m;->l(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addVisibilityListener(Landroidx/media3/ui/PlayerControlView$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method d0()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz v1, :cond_9

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->Y(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/16 p1, 0xc

    invoke-interface {v1, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Landroidx/media3/common/a0;->v()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroidx/media3/common/a0;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroidx/media3/common/a0;->w()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_7

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroidx/media3/common/util/a1;->v0(Landroidx/media3/common/a0;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroidx/media3/common/util/a1;->w0(Landroidx/media3/common/a0;)Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x7

    invoke-interface {v1, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Landroidx/media3/common/a0;->f()V

    goto :goto_0

    :cond_6
    const/16 p1, 0x9

    invoke-interface {v1, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Landroidx/media3/common/a0;->m()V

    goto :goto_0

    :cond_7
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    invoke-static {v1, p1}, Landroidx/media3/common/util/a1;->x0(Landroidx/media3/common/a0;Z)Z

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method f0()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->l0()V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->o0()V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->s0()V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->u0()V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->m0()V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    return-void
.end method

.method public getPlayer()Landroidx/media3/common/a0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->r0:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->C()V

    return-void
.end method

.method public hideImmediately()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->F()V

    return-void
.end method

.method public isAnimationEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->I()Z

    move-result v0

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->J()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->P()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->X()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->f0()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->Q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->W()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/e0;->R(ZIIII)V

    return-void
.end method

.method public removeVisibilityListener(Landroidx/media3/ui/PlayerControlView$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/e0;->Y(Z)V

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    new-array p1, v0, [Z

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$d;)V
    .locals 4
    .param p1    # Landroidx/media3/ui/PlayerControlView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->k0:Landroidx/media3/ui/PlayerControlView$d;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Landroidx/media3/ui/PlayerControlView;->j0(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->j0(Landroid/view/View;Z)V

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/a0;)V
    .locals 4
    .param p1    # Landroidx/media3/common/a0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/media3/common/a0;->k()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->c:Landroidx/media3/ui/PlayerControlView$c;

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->L(Landroidx/media3/common/a0$d;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->c:Landroidx/media3/ui/PlayerControlView$c;

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->M(Landroidx/media3/common/a0$d;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->f0()V

    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/PlayerControlView$f;)V
    .locals 0
    .param p1    # Landroidx/media3/ui/PlayerControlView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xf

    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-interface {v0}, Landroidx/media3/common/a0;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-interface {v0, v2}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v3, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->o0()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->n0:Z

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->l0()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->s0()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->r0:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->X()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a1;->p(III)I

    move-result p1

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->s0:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->c0()V

    return-void
.end method

.method public updateIsFullscreen(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->l0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->l0:Z

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->i0(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->i0(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->k0:Landroidx/media3/ui/PlayerControlView$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/ui/PlayerControlView$d;->q(Z)V

    :cond_1
    return-void
.end method
