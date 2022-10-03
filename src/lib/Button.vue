<template>
  <button
    class='honeybee-button'
    :class='classes'
    :disabled='disabled'
  >
    <span
      v-if='loading'
      class='honeybee-loadingIndicator'></span>
    <slot />
  </button>
</template>

<script lang='ts'>
import { computed } from 'vue';

export default {
  props: {
    theme: {
      type: String,
      default: 'button',
    },
    size: {
      type: String,
      default: 'normal',
    },
    level: {
      type: String,
      default: 'normal',
    },
    disabled: {
      type: Boolean,
      default: false,
    },
    loading: {
      type: Boolean,
      default: false,
    },
  },
  setup(props) {
    const { theme, size, level } = props
    const classes = computed(() => {
      return {
        [`honeybee-theme-${theme}`]: theme,
        [`honeybee-size-${size}`]: size,
        [`honeybee-level-${level}`]: level,
      }
    })
    return { classes }
  },
}
</script>

<style lang='scss'>
$h: 32px;
$border-color: #d9d9d9;
$color: #000000d9;
$blue: #1890ff;
$radius: 4px;
$red: #ff4d4f;
$grey: #b8b8b8;
.honeybee-button {
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: #ffffff;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: background 250ms;

  & + & {
    margin-left: 8px;
  }

  &:hover, &:focus {
    color: #40a9ff;
    border-color: #40a9ff;
  }

  &:focus {
    outline: none;
  }

  &::-moz-focus-inner {
    border: 0;
  }

  &.honeybee-theme-link {
    border-color: transparent;
    box-shadow: none;
    color: $blue;

    &:hover, &:focus {
      color: #40a9ff;
    }
  }

  &.honeybee-theme-text {
    border-color: transparent;
    box-shadow: none;
    color: inherit;

    &:hover, &:focus {
      background: #fafafa;
    }
  }

  &.honeybee-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
  }

  &.honeybee-size-small {
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
  }

  &.honeybee-theme-button {
    &.honeybee-level-loading {
      background: #69b7ff;
      color: #ffffff;
      border-color: #69b7ff;

      &:hover, &:focus {
        background: #83c7ff;
        border-color: #83c7ff;
      }
    }

    &.honeybee-level-main {
      background: $blue;
      color: #ffffff;
      border-color: $blue;

      &:hover, &:focus {
        background: #40a9ff;
        border-color: #40a9ff;
      }
    }

    &.honeybee-level-danger {
      background: $red;
      border-color: $red;
      color: #ffffff;

      &:hover, &:focus {
        background: #ff7875;
        border-color: #ff7875;
      }
    }
  }

  &.honeybee-theme-link {
    &.honeybee-level-danger {
      color: $red;

      &:hover, &:focus {
        color: #ff7875;
      }
    }
  }

  &.honeybee-theme-text {
    &.honeybee-level-main {
      color: $blue;

      &:hover, &:focus {
        color: #40a9ff;
      }
    }

    &.honeybee-level-danger {
      color: $red;

      &:hover, &:focus {
        color: #ff7875;
      }
    }
  }

  &.honeybee-theme-button {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
      background: #f5f5f5;

      &:hover {
        border-color: #d9d9d9;
      }
    }
  }

  &.honeybee-theme-link, &.honeybee-theme-text {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
    }
  }

  > .honeybee-loadingIndicator {
    width: 14px;
    height: 14px;
    display: inline-block;
    margin-right: 4px;
    border-radius: 8px;
    border-color: #ffffff #ffffff #ffffff transparent;
    border-style: solid;
    border-width: 2px;
    animation: honeybee-spin 1s infinite linear;
  }
}

@keyframes honeybee-spin {
  0% {
    transform: rotate(0deg)
  }
  100% {
    transform: rotate(360deg)
  }
}
</style>