/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(time) {
  if (time == null) return 'You forgot to set the timer.';

  return time === 0 ? 'Lasagna is done.' : 'Not done, please wait.';
}

export function preparationTime(layers, avePrepTime = 2) {
  return layers.length * avePrepTime;
}

export function quantities(layers) {
  const sauce_count = layers.filter(l => l === 'sauce').length;
  const noodles_count = layers.filter(l => l === 'noodles').length;

  return { noodles: noodles_count * 50, sauce: sauce_count * 0.2 }; 
}

export function addSecretIngredient(friend_list, my_list) {
  my_list.push(friend_list[friend_list.length - 1]);
}

export function scaleRecipe(recipe, portionNum) {
  let scaledRecipe = {...recipe};

  for (let ingredient in recipe) {
    scaledRecipe[ingredient] *= portionNum / 2;
  }

  return scaledRecipe;
}
