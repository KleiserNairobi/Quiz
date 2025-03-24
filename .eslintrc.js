module.exports = {
  root: true,
  extends: '@react-native',
  overrides: [
    {
      files: ['*.ts', '*.tsx'],
      rules: {
        'no-shadow': 'off',
        'no-undef': 'off',
        'jsx-quotes': ['error', 'prefer-single'],
        '@typescript-eslint/no-shadow': ['off'],
        '@typescript-eslint/no-unused-vars': ['error'],
        'react-native/no-inline-styles': 0,
      },
    },
  ],
};
