// Import the Three.js module
import * as THREE from 'https://unpkg.com/three@0.111.0/build/three.module.js';
import { OrbitControls } from 'https://unpkg.com/three@0.111.0/examples/jsm/controls/OrbitControls';
//import { OrbitControls } from '/OrbitControls.js';
alert('hello');

// Create the scene, camera, and renderer
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
const renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

// Load the background texture
const loader = new THREE.TextureLoader();
loader.load('background.jpg', function(texture) {
    scene.background = texture;
});


// Add orbit controls to the camera
//const controls = new OrbitControls(camera, renderer.domElement);

// Create a plane to apply the texture
const geometry = new THREE.PlaneGeometry(1, 1); // Adjust size as needed
const texture = new THREE.TextureLoader().load('spaceship.png'); // Replace with the path to your image file
const material = new THREE.MeshBasicMaterial({ 
    map: texture, 
    transparent: true, // Enable transparency
    alphaTest: 0.5 // Adjust this value based on your texture to handle the black background
 });
const spaceship = new THREE.Mesh(geometry, material);
scene.add(spaceship);

// Spaceship movement directions
const move = {
    up: false,
    down: false,
    left: false,
    right: false
};

// Set the camera position so that the plane is visible
camera.position.z = 10;



// Event listeners for keydown
document.addEventListener('keydown', function(event) {
    switch (event.code) {
        case 'ArrowUp':
            move.up = true;
            break;
        case 'ArrowDown':
            move.down = true;
            break;
        case 'ArrowLeft':
            move.left = true;
            break;
        case 'ArrowRight':
            move.right = true;
            break;
    }
});

// Event listeners for keyup
document.addEventListener('keyup', function(event) {
    switch (event.code) {
    case 'ArrowUp':
        move.up = false;
        break;
    case 'ArrowDown':
        move.down = false;
        break;
    case 'ArrowLeft':
        move.left = false;
        break;
    case 'ArrowRight':
        move.right = false;
        break;
    }
});

// Call the animate function to start the loop
animate();

// Create an animation loop to render the scene
function animate() {
    requestAnimationFrame(animate);
    //controls.update(); // Only required if controls.enableDamping = true, or if controls.autoRotate = true
     // Update spaceship position based on key presses
    if (move.up) spaceship.position.y += 0.1;
    if (move.down) spaceship.position.y -= 0.1;
    if (move.left) spaceship.position.x -= 0.1;
    if (move.right) spaceship.position.x += 0.1;
    renderer.render(scene, camera);
}